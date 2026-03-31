# Step 1 (Run ONLY once)
# install.packages("ggplot2")

# Step 2 (Run every time)
library(ggplot2)

# Step 3: Dataset
data <- data.frame(
  a = 1:10,
  b = rnorm(10),
  label = letters[11:20]
)

print(data)

# 3.1.1 Scatter Plot
ggplot(data, aes(x = a, y = b)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "X-axis", y = "Y-axis")


# 3.1.2 Colored Scatter Plot
ggplot(data, aes(x = a, y = b)) +
  geom_point(color = "forestgreen", size = 2) +
  labs(title = "Scatter Plot with Color", x = "X-axis", y = "Y-axis")


# 3.1.3 Scatter with Labels
ggplot(data, aes(x = a, y = b)) +
  geom_point(color = "forestgreen", size = 3) +
  geom_text(aes(label = label), vjust = -1, color = "blue") +
  labs(title = "Scatter Plot with Labels", x = "X-axis", y = "Y-axis")


# 3.1.4 Scatter with Smooth Line
ggplot(data, aes(x = a, y = b)) +
  geom_point(color = "forestgreen", size = 2) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Scatter Plot with Smooth Line", x = "X-axis", y = "Y-axis")


# 3.2 Line Plot
ggplot(data, aes(x = a, y = b)) +
  geom_line(color = "red", size = 1) +
  labs(title = "Line Plot", x = "X-axis", y = "Y-axis")


# 3.3 Bar Plot
ggplot(data, aes(x = a, y = b)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Bar Plot", x = "X-axis", y = "Values")