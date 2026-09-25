# Week 2 – Data Visualization and Insight Communication using R

## Project Overview

This project focuses on data visualization and insight communication using R. The Titanic passenger survival dataset from Week 1 was continued for this analysis.

The objective is to create clear and informative visualizations that communicate trends, patterns, comparisons, and relationships within the dataset.

## Visualizations Created

### 1. Survival Rate by Sex

A bar chart was used to compare survival rates between male and female passengers.

### 2. Survival Rate by Passenger Class

A bar chart was used to compare survival rates across passenger classes.

### 3. Age Distribution

A histogram was used to understand the distribution and concentration of passenger ages.

### 4. Age vs Cleaned Fare

A scatter plot was used to explore the relationship between passenger age and fare.

### 5. Survival Rate by Age Group

A line chart was used to show how survival rates varied across different age groups.

## Key Insights

The visualizations show differences in observed survival rates based on sex and passenger class. Female passengers had a higher observed survival rate than male passengers in this working dataset. Survival rates also varied across passenger classes.

The age distribution shows that passengers were concentrated mainly within young and middle-adult age ranges. The scatter plot shows considerable variation between age and fare rather than a simple direct relationship.

These findings are descriptive observations from the dataset and should not be interpreted as causal conclusions.

## Technologies Used

* R
* RStudio
* ggplot2
* dplyr
* GitHub

## Repository Contents

```text
├── README.md
├── week2_titanic_visualization.R
├── titanic_week2_dataset.csv
└── visualizations/
    ├── 01_survival_by_sex.png
    ├── 02_survival_by_class.png
    ├── 03_age_distribution.png
    ├── 04_age_vs_fare.png
    └── 05_survival_by_age_group.png
```

## How to Run

1. Download or clone the repository.
2. Open `week2_titanic_visualization.R` in RStudio.
3. Keep the CSV file in the same working directory.
4. Install the required packages if necessary:

```r
install.packages("ggplot2")
install.packages("dplyr")
```

5. Run the R script to reproduce the analysis and visualizations.

## Conclusion

This project demonstrates practical skills in R-based data visualization, exploratory analysis, and communicating analytical insights through appropriate chart types.
