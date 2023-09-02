function [q] = dCdt(p)

% Name : Avvienash A/L Jaganathan
% ID   : 322 810 13
% Date Modified :14/1/2021
% determine the coefficients of the derivative of a n order polynomial 
% I didnt write the func only for n=2. this seems more adaptive. Sorry

% Allocate for q
q = ones(1,length(p)- 1);
for i = 1:length(q)
    q(i) = p(i)*(length(p)-i);
end