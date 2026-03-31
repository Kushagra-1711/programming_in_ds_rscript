# Step 1 (Run once)
# install.packages("ggplot2")
# install.packages("plotly")

# Step 2
library(ggplot2)
library(plotly)

# Step 3: Load dataset
data(iris)
print(iris)

# 1. Static Visualization (ggplot2)
p <- ggplot(iris, aes(x = Sepal.Width, y = Petal.Width, color = Species)) +
  geom_point(size = 2) +
  labs(title = "Static Scatter Plot of Iris Dataset",
       x = "Sepal Width",
       y = "Petal Width")

# Display static plot
print(p)

# 2. Convert to Interactive Plot
ggplotly(p)

# 3. Interactive Plot using plot_ly
plot_ly(data = iris,
        x = ~Sepal.Width,
        y = ~Petal.Width,
        color = ~Species,
        type = "scatter",
        mode = "markers") %>%
  layout(title = "Iris Data Set Visualization",
         xaxis = list(title = "Sepal Width", ticksuffix = " cm"),
         yaxis = list(title = "Petal Width", ticksuffix = " cm"))