function [t,q,z] = midpoint2(dzdt,tspan,q0,z0,h)
% [t,q,z] = midpoint2(dzdt,tspan,q0,z0,h)
% Written by: Avvienash A/L Jaganathan, ID: 322 810 13
% Last modified: 15/1/2021
% uses midpoint method to solve a simultaneous ODE's
%
% INPUTS:
%  - dzdt = function handle of rate of flow of charge
%  - tspan = [<initial value>, <final value>] of independent variable
%  - q0 = initial value of q
%  - z0 = initial value of z
%  - h = step size
% OUTPUTS:
%  - t = vector of independent variable
%  - q = vector of solution for charge
%  - z = vector of solution for rate of change of charge


% error checking for tspan
if ~(tspan(2)>tspan(1))
    error('upper limit must be greater than lower')
end

% Create t as a column vector
t = (tspan(1):h:tspan(2))';
n = length(t);
% if necessary, add an additional t so that range goes up to tspan(2)
if t(n)~= tspan(2)
    t(n+1) = tspan(2);
    n = n+1;
end

q = q0*ones(size(t));
z = z0*ones(size(t));
% Implement Midpoint's method
for i = 1:n-1
    h = t(i+1)-t(i);
    qhalf = q(i) + h/2*z(i);
    zhalf = z(i) + h/2*dzdt(z(i),q(i));
    q(i+1) = q(i) +h*zhalf;
    z(i+1) = z(i) +h*dzdt(zhalf,qhalf);
end