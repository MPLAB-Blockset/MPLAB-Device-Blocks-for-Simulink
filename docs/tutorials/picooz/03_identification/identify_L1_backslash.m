%% identify_L1_backslash.m
% ------------------------------------------------------------------------
% Level 1 — Linear regression with the backslash operator.
% Works on BASE MATLAB — no toolbox required.
%
% Approximates the Picooz model around its operating point by a LINEAR
% first-order ODE:
%
%       d(omega)/dt = -(1/tau) * omega + k * u
%
% Discretised by the backward Euler rule this yields
%
%       omega[n] = a * omega[n-1] + b * u[n-1]    with  a = 1 - Ts/tau,  b = k*Ts
%
% which is linear in (a, b). Build A, Y from the recorded chirp and solve
%
%       [a; b] = A \ Y     (least-squares closed form)
%
% Strengths : simplest possible method, 10 lines of MATLAB, a few ms runtime,
%             explains WHAT identification is.
% Limits    : ignores the non-linear drag exp(k2*omega) — accurate only
%             near the nominal operating point. For the full non-linear
%             model, use identify_L2_fminsearch.m (or L3_lsqnonlin).
% ------------------------------------------------------------------------

clear; clc;

load tutorial_picooz_chirp.mat          % provides: t, u, omega_meas
Ts = mean(diff(t));

% Build the regression    omega[n] = [omega[n-1]  u[n-1]] * [a; b]
Y = omega_meas(2:end);
A = [omega_meas(1:end-1)  u(1:end-1)];

p = A \ Y;
a = p(1);   b = p(2);

tau = Ts / (1 - a);
k   = b  / Ts;

fprintf('L1 — Linear closed-form (backslash) identification\n');
fprintf('   tau = %.4f s\n', tau);
fprintf('   k   = %.4f (PWM duty -> V/s)\n\n', k);

% Validate by running the identified linear model forward
omega_sim = zeros(size(omega_meas));
omega_sim(1) = omega_meas(1);
for n = 2:numel(t)
    omega_sim(n) = a*omega_sim(n-1) + b*u(n-1);
end

rmse = sqrt(mean((omega_sim - omega_meas).^2));
fprintf('RMSE (fit): %.4f V\n', rmse);

figure; plot(t, omega_meas,'b', t, omega_sim, 'r--','LineWidth',1.2);
legend('Measured','Simulated (L1 linear)','Location','Best');
xlabel('t [s]'); ylabel('\omega [V]'); grid on;
title(sprintf('L1 backslash fit  —  RMSE = %.3f V', rmse));

save fitted_params_L1.mat tau k
