function [dx, y] = picooz_motorBlade_m(t, x, u, tau, tau2, k ,k2,k3,  varargin)
%Picooz: Motor & Blade model using an exponential for the drag force.

% Output equations: y output is the speed of the motor & blade.
x(1) = max(x(1),0);     % Speed is always positive

y = [x(1)              % Speed output is equal to the state 
    ];

% State equations.
if (x(1) > 0)      
    % if current speed is not null:
     %dx(1) =  - (1/tau)*(exp(k2*x(1))) +  (k)*u(1) ;  % Angular velocity.   
     dx(1) =  - (1/tau)*(exp(k2*x(1))) +  k* u(1);  % Angular velocity.   
    
else                
    % if current speed is null:
     dx(1) =  k*u(1) ;  % Angular velocity.
     
end
   
