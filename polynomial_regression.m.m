
% Q1b

% Some code may already be provided below
% DO NOT clear, close or clc inside this script
% Apply good programming practices
%
% Name : Avvienash A/L Jaganathan
% ID   : 322 810 13
% Date Modified : 14/1/2021

fprintf('\n Q1b \n\n')


%% code starts here

% Plot the figure
figure(3)  %figure 3
plot(M(:,1),M(:,2),'ro')
grid on
xlabel('Days Tracked');
ylabel('Total Cases');
title('Total cases agaisnt days tracked in Malaysia');
hold on

% fit each period
%% Period 1
x = M(1:50,1);
y = M(1:50,2);
% linearize data
[c,m] = linreg(x,y);

% plot the period
plot(x,m*x+c);
hold on;

fprintf('The equations of the fitted lines are as follows:\n')
fprintf('Period 1: y = %.2ex + %.2e\n',m,c)
%% Period 2
x = M(51:145,1);
y = M(51:145,2);
% linearize data
[c,m] = linreg(x,y);

% plot the period
plot(x,m*x+c);
hold on;
fprintf('Period 2: y = %.2ex + %.2e\n',m,c)
%% Period 3
x = M(146:251,1);
y = M(146:251,2);
% linearize data
[c,m] = linreg(x,y);

% plot the period
plot(x,m*x+c);
hold on;
fprintf('Period 3: y = %.2ex + %.2e\n',m,c)
%% Period 4
x = M(252:275,1);
y = M(252:275,2);
% y = ae^(bx)
% ln(y) = b*x + ln(a)
% linearize data
[c,m] = linreg(x,log(y));
b = m;
a = exp(c);

% plot the period
plot(x,a*exp(b*x));
hold on;
fprintf('Period 4: y = %.2ee^(%.2ex)\n',a,b)
%% Period 5
x = M(276:317,1);
y = M(276:317,2);

% fit data
p = polyfit(x,y,2);

% plot the period
plot(x,p(1)*x.^2 + p(2)*x + p(3));
hold off

fprintf('Period 5: y = %.2e*x.^2 + %.2e*x + %.2e\n',p(1),p(2),p(3))

%% clear everything that is no longer needed
clear a b c x y m M  