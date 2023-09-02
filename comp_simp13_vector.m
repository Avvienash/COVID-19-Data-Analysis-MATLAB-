function I = comp_simp13_vector(x,y)
% I = comp_simp_vector(x,y)
% Written by: Avvienash A/L Jaganathan, ID: 322 810 13
% Last modified: 14/1/2021
% Performs composite simpson's 1/3 rule
%
% INPUTS:
%  - x: independent variable
%  - y: dependent variable
% OUTPUT:
%  - I: integral value

% width and number of points
h = x(2)-x(1);
n = length(x);

% error checking
if n<3 || rem(n,2) == 0
    error('Error for n');
end

%Evaluating integral
even_sum = 0;

for i = 2:2:n-1
    even_sum = even_sum + y(i);
end

odd_sum = 0 ;

for j = 3:2:n-2
    odd_sum = odd_sum + y(j);
end
I = h/3*(y(1)+4*even_sum+2*odd_sum+y(end));