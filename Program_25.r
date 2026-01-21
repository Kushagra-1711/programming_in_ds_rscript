# Sensor Data Analysis

# Sensor readings (60 minutes)
temperature <- c(
  28, 29, 30, 31, 32, 33, 34, 35, 34, 33,
  32, 31, 30, 29, 28, 27, 26, 27, 28, 29,
  30, 31, 32, 33, 34, 35, 36, 35, 34, 33,
  32, 31, 30, 29, 28, 27, 26, 27, 28, 29,
  30, 31, 32, 33, 34, 35, 36, 35, 34, 33,
  32, 31, 30, 29, 28, 27
)

humidity <- c(
  45, 44, 43, 42, 41, 40, 39, 38, 37, 36,
  35, 34, 33, 32, 31, 30, 29, 30, 31, 32,
  33, 34, 35, 36, 37, 38, 39, 40, 41, 42,
  43, 44, 45, 46, 47, 48, 49, 48, 47, 46,
  45, 44, 43, 42, 41, 40, 39, 38, 37, 36,
  35, 34, 33, 32, 31, 30
)

pressure <- c(
  1012, 1013, 1012, 1011, 1010, 1009, 1008, 1007, 1008, 1009,
  1010, 1011, 1012, 1013, 1014, 1015, 1016, 1015, 1014, 1013,
  1012, 1011, 1010, 1009, 1008, 1007, 1008, 1009, 1010, 1011,
  1012, 1013, 1014, 1015, 1016, 1017, 1016, 1015, 1014, 1013,
  1012, 1011, 1010, 1009, 1008, 1007, 1008, 1009, 1010, 1011,
  1012, 1013, 1014, 1015, 1016, 1017
)

# Generate time vector safely
time <- seq_along(temperature)

# 1. Average readings
avg_temperature <- mean(temperature)
avg_humidity    <- mean(humidity)
avg_pressure    <- mean(pressure)

# 2. Critical intervals
critical_intervals <- which(temperature > 30 & humidity < 40)

# 3. Plot sensor readings
plot(time, temperature, type = "l",
     col = "red",
     ylim = range(c(temperature, humidity)),
     xlab = "Time (minutes)",
     ylab = "Sensor Value",
     main = "Sensor Readings Over Time")

lines(time, humidity, col = "blue")

legend("topright",
       legend = c("Temperature (°C)", "Humidity (%)"),
       col = c("red", "blue"),
       lty = 1)

# Display results
avg_temperature
avg_humidity
avg_pressure
critical_intervals
