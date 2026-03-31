#install the necessary packages
install.packages("ggplot2")

# Load library
library(ggplot2)

# Load dataset
data("midwest")

# 1. Scatter Plot with Trend Line
ggplot(midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_point(color = "red", alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "College Education vs Adult Poverty",
       x = "Percentage of College Educated",
       y = "Percentage of Adult Poverty")


# 2. Bar Chart (Population by State)
ggplot(midwest, aes(x = state, y = poptotal, fill = state)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Population by State",
       x = "State",
       y = "Population")


# 3. Hexagonal Heatmap
ggplot(midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_hex() +
  labs(title = "Hexbin Plot: Education vs Poverty",
       x = "Percentage of College Educated",
       y = "Adult Poverty (%)")


# 4. Shared Aesthetic Mapping + Override
base_plot <- ggplot(midwest, aes(x = percollege))

base_plot +
  geom_point(aes(y = percadultpoverty), color = "blue") +
  geom_point(aes(y = percchildbelowpovert), color = "green") +
  labs(title = "Adult vs Child Poverty Comparison",
       x = "College Education (%)",
       y = "Poverty (%)")


# 5. Color Mapping by State
ggplot(midwest, aes(x = percollege, y = percadultpoverty, color = state)) +
  geom_point() +
  labs(title = "Education vs Poverty by State")


# 6. Custom Color & Transparency
ggplot(midwest, aes(x = percollege, y = percadultpoverty)) +
  geom_point(color = "red", alpha = 0.3) +
  labs(title = "Customized Scatter Plot with Transparency")