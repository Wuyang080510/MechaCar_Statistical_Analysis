#Load the dplyr library
library(dplyr)

# Deliverable 1:
# Import MecharCar dataset into R
MechaCar <-  read.csv(file="Data/MechaCar_mpg.csv")

#Perform multiple linear regression
reg <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar)
summary(reg)


# Make all variable values in the same scale by scaling the values in the dataframe  
# scaled_data <-  scale(MechaCar, center=TRUE, scale = TRUE)
# scaled_dataframe <-  as.data.frame(scaled_data)

# reg_scaled <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=scaled_dataframe)

# summary(reg_scaled)


# Deliverable 2:
# Read Suspension_Coil.csv 
Coil_Data <- read.csv(file="Data/Suspension_Coil.csv")

# Perform a total summary statistics on suspension coils
Total_Summary <- Coil_Data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Group data by manufacturing lot and create a lot_summary dataframe
Lot_Summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


# Deliverable 3:
# Use t.test() to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1500 pounds per square inch
t.test(Coil_Data$PSI, mu=1500)

# Compare each manufacturing lot against mean PSI of the population
# Subset data for each manufacturing lot 
Lot1_Data <- subset(Coil_Data, Manufacturing_Lot=="Lot1")
Lot2_Data <- subset(Coil_Data, Manufacturing_Lot=="Lot2")
Lot3_Data <- subset(Coil_Data, Manufacturing_Lot=="Lot3")
# Perform t-test between each manufacturing lot and population mean
Lot1_tTest <- t.test(Lot1_Data$PSI, mu=1500)
Lot2_tTest <- t.test(Lot2_Data$PSI, mu=1500)
Lot3_tTest <- t.test(Lot3_Data$PSI, mu=1500)

Lot1_tTest
Lot2_tTest
Lot3_tTest
