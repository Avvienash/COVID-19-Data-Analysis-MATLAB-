% Q1d

% Some code may already be provided below
% DO NOT clear, close or clc inside this script
% Apply good programming practices
%
% Name : Avvienash A/L Jaganathan
% ID   : 322 810 13
% Date Modified : 14/1/2021

fprintf('\n Q1d \n\n')

%% code starts here
%define variables
y = 12*10^4; % total cases
[q] = dCdt(p);
% root-finding equation
f = @(x) p(1)*x.^2 + p(2)*x + p(3)- y;
df = @(x) q(1)*x + q(2);

% root finding of f(x) with Newton-Raphson
xi=300;
precision=1e-5;
[rootf,iterf] = newraph(f, df, xi, precision);

% print the answer
fprintf('f(x): precision = %.2e, days tracked when the total cases of Malaysia reach 12 × 10^4 = %d, iter = %d\n', ...
    precision, round(rootf), iterf);

%% clear everything that is no longer needed
clear p y q f df xi precision rootf iterf