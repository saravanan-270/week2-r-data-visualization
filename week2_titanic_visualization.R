# Week 2: Data Visualization and Insight Communication using R
# Dataset: Titanic passenger survival dataset
# Required packages: ggplot2, dplyr

library(ggplot2)
library(dplyr)

data <- read.csv("titanic_week2_dataset.csv", stringsAsFactors = FALSE)

# Convert categorical variables
data$Sex <- factor(data$Sex)
data$Pclass <- factor(data$Pclass)
data$Embarked <- factor(data$Embarked)

# 1. Bar chart: survival rate by sex
sex_summary <- data %>%
  group_by(Sex) %>%
  summarise(Survival_Rate = mean(Survived))

ggplot(sex_summary, aes(x = Sex, y = Survival_Rate)) +
  geom_col() +
  labs(title = "Survival Rate by Sex",
       x = "Sex", y = "Survival Rate") +
  ylim(0, 1)

# 2. Bar chart: survival rate by passenger class
class_summary <- data %>%
  group_by(Pclass) %>%
  summarise(Survival_Rate = mean(Survived))

ggplot(class_summary, aes(x = Pclass, y = Survival_Rate)) +
  geom_col() +
  labs(title = "Survival Rate by Passenger Class",
       x = "Passenger Class", y = "Survival Rate") +
  ylim(0, 1)

# 3. Histogram: age distribution
ggplot(data, aes(x = Age)) +
  geom_histogram(bins = 12, na.rm = TRUE) +
  labs(title = "Age Distribution of Passengers",
       x = "Age", y = "Number of Passengers")

# 4. Scatter plot: age vs fare
ggplot(data, aes(x = Age, y = Fare_Clean)) +
  geom_point(alpha = 0.65, na.rm = TRUE) +
  labs(title = "Age vs Cleaned Fare",
       x = "Age", y = "Cleaned Fare")

# 5. Line chart: survival rate by age group
data$AgeBand <- cut(data$Age,
                    breaks = c(0, 12, 25, 40, 60, 100),
                    labels = c("0-12", "13-25", "26-40", "41-60", "61+"))

age_summary <- data %>%
  group_by(AgeBand) %>%
  summarise(Survival_Rate = mean(Survived, na.rm = TRUE))

ggplot(age_summary, aes(x = AgeBand, y = Survival_Rate, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = "Survival Rate by Age Group",
       x = "Age Group", y = "Survival Rate") +
  ylim(0, 1)

# Optional: save the cleaned visualization dataset
write.csv(data, "titanic_week2_visualization_data.csv", row.names = FALSE)
