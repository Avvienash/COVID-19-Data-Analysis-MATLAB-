% Q1a

% Some code may already be provided below
% DO NOT clear, close or clc inside this script
% Apply good programming practices
%
% Name : Avvienash A/L Jaganathan
% ID   : 322 810 13
% Date Modified : 14/1/2021 

fprintf('\n Q1a \n\n')

%% code starts here

% import the contents of owid-covid-data-s3.xlsx 

Data = importdata('owid-covid-data-s3.xlsx');
% Below are the key headers
%    Location: The location/country
%    Continent: The continent of the location
%    Days_tracked: The days since COVID-19 was first tracked in the location
%    Total_cases: The total cases of COVID-19
%    Total_deaths: The total deaths due to COVID-19

% The number of columns and rows are given
rows = 60672;
columns = 51;

% create a array called headers for the key headers
headers = ["location" "continent" "days_tracked" "total_cases" "total_deaths"];

% find the columns(index) for the headers
headersInd = ones(1,length(headers));
n = 0;
for i = 1:columns
    for j = 1:length(headers)
        if strcmpi(Data.textdata(1,i),headers(j)) == 1
            n = n+1;
            headersInd(j)= i;
        end
    end
end

% List the Key locations    
key_locations = ["Australia" "China" "India" "Indonesia" "Malaysia" "Vietnam"];
% find the columns for the key_locations
locationsInd = ones(2,length(key_locations));
m = 0;
for i = 1:length(key_locations)
    p=0;
    for j = 1:rows
        if  p == 0 && strcmpi(Data.textdata(j,headersInd(1)),key_locations(i)) == 1
            m = m +1;
            locationsInd(1,i)= j-1;
            p = 1;
        end
        if  strcmpi(Data.textdata(j,headersInd(1)),key_locations(i)) == 1
            locationsInd(2,i)= j-1;
        end
    end
end
%% plot the figures
figure(1)  %figure 1 
% plot values for each location
for i = 1:m
    semilogy((Data.data(locationsInd(1,i):locationsInd(2,i),headersInd(3)-4))',(Data.data(locationsInd(1,i):locationsInd(2,i),headersInd(4)-4))','--.')
    hold on
end
grid on
xlabel('Days Tracked');
ylabel('Total Cases');
title('Total cases agaisnt days tracked');
legend("Australia","China","India","Indonesia","Malaysia","Vietnam",'location','northwest');
hold off

figure(2)  %figure 2
% plot values for each location
for i = 1:m
    semilogy((Data.data(locationsInd(1,i):locationsInd(2,i),headersInd(3)-4))',(Data.data(locationsInd(1,i):locationsInd(2,i),headersInd(5)-4))','--.')
    hold on
end
grid on
xlabel('Days Tracked');
ylabel('Total Deaths');
title('Total deaths agaisnt days tracked');
legend("Australia","China","India","Indonesia","Malaysia","Vietnam",'location','northwest');
hold off

% Print a statement that describes which of the 6 countries above has best suppressed the COVID-19 virus.
fprintf('China has best suppressed the COVID-19 virus.\n')
%% Create a new matrix for malaysia (Next Question)
n = length(Data.data(locationsInd(1,5):locationsInd(2,5))); % Determine the number of rows for Malaysia
M = ones(n,length(headers) - 2); % Allocate enough space for the matrix
for i = 1:3
    for j = 1:n
        M(j,i) = Data.data(locationsInd(1,5)- 1+j,headersInd(i+2)-4);
    end
end

%% clear everything that is no longer needed

clear columns Data headers headersInd i j key_locations locationsInd m n p rows