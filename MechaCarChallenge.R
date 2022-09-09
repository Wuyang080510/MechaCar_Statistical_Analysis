#Load the dplyr library
library(dplyr)

# Deliverable 1:
# Import MecharCar dataset into R
MechaCar <-  read.csv(file="Data/MechaCar_mpg.csv")

#Perform multiple linear regression
reg <- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar)
summary(reg)

#Perform multiple linear regression with vehicle_length and ground_clearance only (exploratory purpose)
reg2 <- lm(mpg~vehicle_length+ground_clearance, data=MechaCar)
summary(reg2)


# Deliverable 2:
# Read Suspension_Coil.csv 
Coil_Data <- read.csv(file="Data/Suspension_Coil.csv")

# Perform a total summary statistics on suspension coils
Total_Summary <- Coil_Data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Group data by manufacturing lot and create a lot_summary dataframe
Lot_Summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
