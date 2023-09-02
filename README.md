# COVID-19 Data Analysis (MATLAB)

**Author:** Avvienash

## Description and Background

This GitHub repository contains a MATLAB project that focuses on performing an in-depth analysis of COVID-19 data to extract meaningful insights from a comprehensive dataset. The dataset used for this analysis is 'owid-covid-data-s3.xlsx', which contains vital information on COVID-19 cases, deaths, and related metrics across multiple countries and regions. The project combines various data analysis techniques, including data importation, manipulation, visualization, polynomial regression, root-finding algorithms, and numerical integration, to extract valuable information from the data.

## Goals and Objectives

The main objectives of this project are as follows:

1. **Data Importation:** Import COVID-19 data from the provided dataset.
2. **Data Extraction:** Identify and extract key headers, including location, continent, days tracked, total cases, and total deaths.
3. **Data Visualization:** Analyze and visualize the COVID-19 data to understand trends and patterns in selected countries.
4. **Polynomial Regression:** Implement polynomial regression to model the growth of COVID-19 cases over time.
5. **Root-Finding:** Utilize root-finding algorithms to determine the time it takes for a specific country to reach a predefined total case count.
6. **Numerical Integration:** Compare and evaluate the effectiveness of different numerical integration methods (Simpson's 1/3 and 3/8 rules) for solving mathematical problems within the context of COVID-19 data.

## Code Explanation

### covid_data_analysis.m

1. Import the COVID-19 data from the 'owid-covid-data-s3.xlsx' dataset.
2. Define key data headers for extraction.
3. Initialize variables for the number of rows and columns.
4. Create an array called 'headers' to store key headers.
5. Find the column indices corresponding to the key headers.
6. List the key locations (countries) to analyze.
7. Find the columns (indices) for the key locations.
8. Plot total cases against days tracked for the selected countries.
9. Plot total deaths against days tracked for the selected countries.
10. Print the statement about which country has best suppressed COVID-19.
11. Create a new matrix for Malaysia's data.

### polynomial_regression.m
1. Define and initialize variables for polynomial regression.
2. Perform polynomial regression on Malaysia's total cases against days tracked.
3. Print the equations of the fitted lines for different periods.

### newton_raphson_method.m

1. Define the target total cases 'y' for Malaysia.
2. Calculate the derivative of the polynomial using the 'dCdt' function.
3. Set up the root-finding equation for the polynomial equation.
4. Implement the Newton-Raphson method to find the number of days required to reach the target total cases.
5. Print the result with precision and iteration count.

### comp_simp13_vector.m

1. Calculate the integral using the composite Simpson's 1/3 rule.
2. Handle error checking for the number of data points.
3. Compute the integral value by summing values based on Simpson's 1/3 rule.

### comp_simp38_vector.m

1. Calculate the integral using the composite Simpson's 3/8 rule.
2. Handle error checking for the number of data points.
3. Compute the integral value using Simpson's 3/8 rule.

### dCdt.m

1. Calculate the coefficients of the derivative of a polynomial.
2. Allocate space for the derivative coefficients.
3. Compute the coefficients based on the polynomial degree and coefficients.

### linreg.m

1. Perform linear regression to fit a line to given data.
2. Calculate the gradient (a1) and constant (a0) of the fitted line.
3. Compute the coefficient of determination (R^2) to assess the goodness of fit.

### midpoint2.m

1. Solve simultaneous ordinary differential equations (ODEs) using the midpoint method.
2. Initialize variables, including the initial values of dependent variables and the time vector 't.'
3. Implement the midpoint method to update the values of dependent variables over time.

### newraph.m

1. Implement the Newton-Raphson method for root finding.
2. Initialize the iteration count and initial guess 'xi.'
3. Calculate the root iteratively using the function 'h' and its derivative 'dh.'
4. Continue the iteration until the desired precision is achieved.

<h3 align="left">Languages and Tools:</h3>
<p align="left"> <a href="https://www.mathworks.com/" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/2/21/Matlab_Logo.png" alt="matlab" width="40" height="40"/> </a> </p>

This repository provides a structured approach to analyzing COVID-19 data using MATLAB, making it easier for researchers and data analysts to gain insights from the dataset.

For detailed code implementation, please refer to the respective MATLAB script files within this repository.
