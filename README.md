# Regresi-Analysis---Project

This repository contains code and data for comparing Ordinary Least Squares (OLS) and Robust Regression methods in estimating poverty rates in West Java, Indonesia. The project aims to evaluate and compare these regression techniques in terms of their ability to predict poverty using a dataset from Open Data Jabar and BPS (Badan Pusat Statistik) Indonesia.

The results of this study suggest that the Robust Regression model outperforms the OLS model, especially in the presence of outliers in the dataset.

The dataset contains information on:

Total expenditure per capita
Percentage of open unemployment rate
Population density
Health index
Education index
Percentage of illiteracy

Methods
1. Ordinary Least Squares (OLS)
The OLS method is used to estimate the relationship between a dependent variable (poverty rate) and several independent variables (expenditure, unemployment rate, etc.). The OLS method minimizes the sum of squared residuals to fit the best possible regression line.

2. Robust Regression
Robust regression is applied when data contains outliers that could influence the OLS model. It helps in maintaining model stability and provides better predictions in the presence of non-normally distributed errors or outliers.

Results
The Robust Regression model demonstrated superior performance compared to the OLS model, as evidenced by a higher R-squared value (0.7318 vs. 0.6491).
In the OLS model, only one variable (total expenditure per capita) was found to be statistically significant at the 5% significance level.
In contrast, the Robust Regression model identified two significant variables: total expenditure per capita and percentage of illiteracy.
