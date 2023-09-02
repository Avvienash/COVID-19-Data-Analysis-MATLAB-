function [root, iter] = newraph(h, dh, ti, precision)
% [root, iter] = newraph(f, df, xi, precision)
% Written by: Avvienash A/L Jaganathan, ID: 322 810 13
% Last modified: 14/1/2021
%
% General purpose algorithm for Newton-Raphson Method
%
% INPUTS:
%  - f: function handle of the equation to be solved
%  - df: function handle of the derivative of the equation to be solved
%  - xi: the initial guess / the next guess x_i_+_1
%  - precision: stopping criteria determined by the user
% OUTPUT:
%  - root: the root of the equation
%  - iter: total iteration taken

% Estimate 1st iteration of xi1 and initialise iteration count
iter = 1;
hxi = h(ti);
mi = dh(ti);

% Iteration for Newton-Raphson method starts
while abs(hxi)> precision
    
    % Increment the iteration count by 1
    iter = iter + 1;
    ti_new = ti - hxi/mi;
    ti = ti_new;
    hxi = h(ti);
    mi = dh(ti);
                      
end

% The final xi1 value is the root
root = ti;
