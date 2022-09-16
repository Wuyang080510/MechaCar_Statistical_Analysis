# MechaCar_Statistical_Analysis
Use statistics and R to boost effective data analytics and imformed business decisions.

## Project Overview
Statistics plays an essential role in data analytics. In this challenge, I will help the data analytics team of an automotive company to review the production data and provide insights that help the manufacturing team solve challenges they face in developing a new model of car. 

In this challenge, I’ll help the data analytics team do the following: 

- Perform multiple linear regression analysis to identify the variables in the dataset predict the mpg of MechaCar prototypes 
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots 
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population 
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, I’ll write a summary interpretation of the findings. 

Two datasets were provided to conduct this analysis.
-	MechaCar MPG dataset
-	Suspension Coil dataset

## Linear Regression to Predict MPG

### Statistical Results Analysis
The statistical summary shows that with the five independent variables, the explanatory power of this multiple linear regression model is 71.49% (R-squared value), which means 71.49 % of the mpg(fuel efficiency) data can be explained by the five independent variables we passed to the linear model. The adjusted R-squared equals 0.6825 meaning some of the predictors do not contribute to the model's explanatory power. I will evaluate the relationship between each independent variable and dependent variable and determine if the independent variable is significant in the regression model. 

![multiple linear regression](https://github.com/Wuyang080510/MechaCar_Statistical_Analysis/blob/main/Images/ml%20regression%20summary.png)

The linear equation for this dataset is: 6.27 * vehicle_length + 0.001 * vehicle_weight + 0.07 * spoiler_angle + 3.55 * ground_clearance + (-3.41) * AWD + （-104）

Let’s have a look at the coefficients table in detail. 

I set the significance level of this analysis to 5%. 

For the first variable, the effect of vehicle length on a car’s mpg(fuel efficiency) is 6.27. The p-value for this variable is 2.60*10-12, significantly less than 0.05. There is a significant relationship between vehicle_length and mpg. 

For the second variable, the effect of vehicle weight on a car’s mpg(fuel efficiency) is 0.001. The p-value for this variable is 0.078, higher than 0.05. We can conclude that there is not a significant relationship between vehicle_weight and mpg. 

For the spoiler_angle variable, when the value of spoiler angle increases by 1, the mpg (fuel efficiency) increases by 0.069. However, the p-value for this coefficient is 0.31, which is way higher than the significance level. The spoiler angle does not explain the change of mpg very well. 

The coefficient between ground_clearance and mpg(fuel efficiency) is 3.55, which means a positive relationship between these two variables. The p-value of the ground_clearance variable is 5.21*10-8, significantly lower than 0.05. Ground clearance has a significant impact on mpg. It is a good predictor for mpg statistically.  

The coefficient between AWD and mpg is -3.41. The p-value is 0.18, higher than the significance level. AWD does not have a significant impact on fuel efficiency (mpg).

The P-value for the intercept is 5.08*10-8, which means the intercept term explains a significant amount of variability in the dependent variable(mpg) when all independent variables are equal to zero.

### Summary 
The vehicle_length and ground_clearance provided a non-random amount of variance to the mpg values in the dataset. 

The R-squared value is 0.7149 while the p-value is significant. We reject the null hypothesis that the slope of our linear model is zero. This infers that the slope of the linear model is not considered zero. With about 71.5% of the mpg observations predicted by the linear model, we can say that our linear model is an effective model for predicting a car’s fuel efficiency. 

## Summary Statistics on Suspension Coils

![Total Summary Table](https://github.com/Wuyang080510/MechaCar_Statistical_Analysis/blob/main/Images/total%20summary.png)

![Lot Summary Table](https://github.com/Wuyang080510/MechaCar_Statistical_Analysis/blob/main/Images/summary%20by%20lots.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

Lot 1 and lot 2 meet the design specification, but lot 3 did not meet the requirement as the variance of the suspension coil exceeds 100 pounds per square inch. The variance of the suspension coil is 170.29, significantly higher than the required limit. 

## T-Tests on Suspension Coils
In this section, I conducted t-tests to compare the coil PSI mean to the population mean.
First, I performed t-tests to determine if the coil PSI across all manufacturing lots is statistically different from the population mean of 1500 pounds per square inch. 

![t-test for all lots](https://github.com/Wuyang080510/MechaCar_Statistical_Analysis/blob/main/Images/t-test%20for%20all%20lots.png)

The significance level was set at 5%.
P-value equals 0.06028, higher than 5% significance level. The sample coil PSI mean is 1498.78. The t-test result shows no statistical evidence that the coil PSI mean across all manufacturing lots is significantly different from the population mean of 1500 pounds per square inch. 

Then, I performed separate t-tests to compare the suspension coil PSI mean of each manufacturing lot with the population mean. 

For manufacturing lot 1, the lot 1 PSI mean is 1500.00. The calculated p-value is 1, significantly higher than the 5% significance level. We accept the null hypothesis. The coil PSI manufactured in lot 1 is not statistically different from the population mean of 1500 pounds per square inch. 

![t-test for lot 1](https://github.com/Wuyang080510/MechaCar_Statistical_Analysis/blob/main/Images/Lot%201.png)

For manufacturing lot 2, the coil PSI mean is 1500.20. The p-value is 0.6072, significantly higher than the 5% significance level. We accept the null hypothesis that the PSI in lot 2 is not statistically different from the population mean of 1500 pounds per square inch. 

![t-test for lot 2](https://github.com/Wuyang080510/MechaCar_Statistical_Analysis/blob/main/Images/Lots%202.png)

For manufacturing lot 3, the coil PSI mean is 1496.14. The calculated p-value is 0.042, lower than the 5% significance level. We reject the null hypothesis that the PSI in lot 3 is not statistically different from the population mean of 1500 pounds per square inch.

![t-test for lot 3](https://github.com/Wuyang080510/MechaCar_Statistical_Analysis/blob/main/Images/Lot%203.png)

In summary, the coil manufactured in lot 1 and lot 2 follows the quality standard as the past orders. The manufacturing process is consistent across production lot 1 and lot 2. Coil manufactured in production lot 3 did not mean quality standard. Attention needs to be raised to examine the manufacturing process in lot 3. 

## Study Design: MechaCar vs Competition
There are many factors a customer takes into consideration when purchasing a car. Two of the most essential features are fuel efficiency and safety rating.  In this section, I will perform a statistical study that compares MechaCar with its competitors. 

### Metrics to Test
-	Fuel Efficiency (mpg)
-	Safety Rating

### Hypothesis
I will perform two hypothesis testing for this study. One is for fuel efficiency, and another one is for safety rating. 

#### Hypothesis Testing for Fuel Efficiency
H0: For the same type of Car in the same price range, the fuel efficiency of MechaCar is the same as competitors
H1: For the same type of Car in the same price range, the fuel efficiency of MechaCar is different than the competitors
#### Hypothesis Testing for Safety Rating
H0: For the same type of Car in the same price range, the safety rating of MechaCar is the same as competitors

H1: For the same type of Car in the same price range, the safety rating of MechaCar is different than the competitors

### Test
Two-sample t-test will be used to perform the study. T-test compares the mean of two samples and tests if there is a statistical difference between the two means. In our case, it would be if there is significant evidence showing that fuel efficiency between MechaCar and its competitors is different. And if there is significant evidence showing that the safety ratings between MechaCar and its competitors are different. 

### Data for the Test
We would need to collect fuel efficiency (mpg) data and safety rating data from both MechaCars and the same type of cars in the same price range from its competitors. The sample should be randomly selected and as large as possible. 
