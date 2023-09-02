function [a0,a1,r2] = linreg(x,y)
% [a0,a1,r2] = linreg(x, y) 
% Written by: Avvienash A/L Jaganathan, ID: 322 810 13
% Last modified: 15/1/2021
% Performs linear regression on the linear x and y data set 
%
% INPUTS:
%  - x: linear independent data set 
%  - y: linear dependent data set 
% OUTPUT:
%  - a0: constant in y=a1*x + a0 
%  - a1: gradient in y=a1*x + a0
%  - r2: coefficient of determination

% Getting best regression coefficients
x2 = x.^2;
xy = x.*y;
n = length(x);
a1 = (n*sum(xy)-sum(x)*sum(y))/(n*sum(x2)-(sum(x))^2);
a0 = mean(y)-a1*mean(x);

% Getting r2 value
st = sum((y-mean(y)).^2);
sr = sum((y-a0-a1*x).^2);
r2 = (st-sr)/st;

