%% identify_L2_fminsearch.m
% ------------------------------------------------------------------------
% Level 2 — Non-linear grey-box identification using plain fminsearch.
% Works on BASE MATLAB — no toolbox required.
%
% Fits the FULL non-linear Picooz model with exponential drag
%
%       d(omega)/dt = -(1/tau) * exp(k2 * omega) + k * u         (omega > 0)
%
% defined in picooz_motorBlade_m.m.
%
% The cost function simulates the ODE with a candidate parameter vector,
% then returns the mean-squared error against the measured response.
% fminsearch (Nelder-Mead simplex) is a derivative-free optimiser that
% ships with base MATLAB — no Optimization Toolbox needed.
%
% Strengths : captures the non-linearity, identical result to a paid
%             System Identification Toolbox grey-box fit.
% Limits    : slower than gradient-based solvers (~1 s vs ~0.1 s for L3).
% ------------------------------------------------------------------------

clear; clc;

load tutorial_picooz_chirp.mat          % provides: t, u, omega_meas

% Initial guess — order of magnitude from physical intuition
p0 = [0.10;   % tau   — mechanical time constant [s]
      0.01;   % k2    — drag non-linearity exponent scaler
      1.00];  % k     — input gain

% Cost function — MSE between measured and simulated response
cost = @(p) sum((simulate_picooz(p, t, u) - omega_meas).^2) / numel(t);

opts = optimset('Display','iter','TolFun',1e-8,'TolX',1e-6,'MaxIter',400);
[p_fit, Jfit] = fminsearch(cost, p0, opts);

fprintf('\nL2 — Non-linear identification (base MATLAB, fminsearch)\n');
fprintf('   tau = %.4f s\n', p_fit(1));
fprintf('   k2  = %.4f\n',    p_fit(2));
fprintf('   k   = %.4f\n\n',  p_fit(3));

% Validate
omega_sim = simulate_picooz(p_fit, t, u);
rmse = sqrt(mean((omega_sim - omega_meas).^2));
fprintf('RMSE (fit): %.4f V\n', rmse);

figure; plot(t, omega_meas,'b', t, omega_sim, 'r--','LineWidth',1.2);
legend('Measured','Simulated (L2 non-linear)','Location','Best');
xlabel('t [s]'); ylabel('\omega [V]'); grid on;
title(sprintf('L2 fminsearch fit  —  RMSE = %.3f V', rmse));

save fitted_params_L2.mat p_fit


function omega_sim = simulate_picooz(p, t, u)
    % Integrate the Picooz grey-box ODE with parameters p = [tau; k2; k]
    tau = p(1); k2 = p(2); k = p(3);
    uinterp = @(tt) interp1(t, u, tt, 'linear', 'extrap');

    function dx = ode(tt, x)
        x = max(x, 0);
        if x > 0
            dx = -(1/tau) * exp(k2*x) + k * uinterp(tt);
        else
            dx = k * uinterp(tt);
        end
    end

    [~, X] = ode45(@ode, t, 0);
    omega_sim = X(:,1);
end
