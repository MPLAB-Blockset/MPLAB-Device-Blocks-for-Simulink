%% identify_L3_lsqnonlin.m
% ------------------------------------------------------------------------
% Level 3 — Non-linear least-squares with lsqnonlin.
% Requires the Optimization Toolbox.
%
% Same cost, same model as L2 — but lsqnonlin uses the Levenberg-Marquardt
% trust-region algorithm with numerical gradients, typically 5-10x faster
% than fminsearch on this kind of problem.
%
% lsqnonlin expects the RESIDUAL vector (not a scalar cost), so we return
% the full (omega_sim - omega_meas) signal instead of its squared sum.
% ------------------------------------------------------------------------

clear; clc;

load tutorial_picooz_chirp.mat          % provides: t, u, omega_meas

p0  = [0.10; 0.01; 1.00];               % [tau, k2, k]
lb  = [1e-3; 0;    0   ];                % physical lower bounds
ub  = [10;   1;    10  ];                % physical upper bounds

residual = @(p) simulate_picooz(p, t, u) - omega_meas;

opts = optimoptions('lsqnonlin', ...
    'Algorithm','levenberg-marquardt', ...
    'Display','iter', ...
    'TolFun',1e-10, 'TolX',1e-8, ...
    'MaxIterations',200);

p_fit = lsqnonlin(residual, p0, lb, ub, opts);

fprintf('\nL3 — Non-linear identification (lsqnonlin)\n');
fprintf('   tau = %.4f s\n', p_fit(1));
fprintf('   k2  = %.4f\n',    p_fit(2));
fprintf('   k   = %.4f\n\n',  p_fit(3));

omega_sim = simulate_picooz(p_fit, t, u);
rmse = sqrt(mean((omega_sim - omega_meas).^2));
fprintf('RMSE (fit): %.4f V\n', rmse);

figure; plot(t, omega_meas,'b', t, omega_sim, 'r--','LineWidth',1.2);
legend('Measured','Simulated (L3 lsqnonlin)','Location','Best');
xlabel('t [s]'); ylabel('\omega [V]'); grid on;
title(sprintf('L3 lsqnonlin fit  —  RMSE = %.3f V', rmse));

save fitted_params_L3.mat p_fit


function omega_sim = simulate_picooz(p, t, u)
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
