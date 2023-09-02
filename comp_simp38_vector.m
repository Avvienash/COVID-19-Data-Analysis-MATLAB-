function I = comp_simp38_vector(x,y)
% I = comp_simp38_vector(x,y)
% Written by: Avvienash A/L Jaganathan, ID: 322 810 13
% Last modified: 14/1/2021
% Performs a composite simpson's 3/8 rule
%
% INPUTS:
%  - x: independent variable
%  - y: dependent variable
% OUTPUT:
%  - I: integral value

h = x(2)-x(1);
n = length(x);

if n<4 || rem(n-4,3) ~= 0
    error('Error for n');
end

%Evaluating integral
sumtwo = 0;

for i = 3:3:n-1
    sumtwo = sumtwo + y(i);
end

sumthree = 0 ;

for j = 2:3:n-2
    sumthree = sumthree + y(j);
end

sumfour = 0 ;

for k =4:3:n-3
    sumfour = sumfour + y(k);
end



I = 3*h/8*(y(1)+3*sumtwo+3*sumthree+ 2*sumfour + y(end));