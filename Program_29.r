# Initialize customer purchase list
customers <- list(
  Alice   = c(200, 150, 300),
  Bob     = c(100, 80, 150),
  Charlie = c(250, 300, 100)
)

# Function to add a new customer
add_customer <- function(name, purchases) {
  customers[[name]] <<- purchases
}

# Function to remove a customer
remove_customer <- function(name) {
  customers[[name]] <<- NULL
}

# Function to calculate total purchase for each customer
total_purchases <- function() {
  sapply(customers, sum)
}

# Function to find highest and lowest total purchases
find_extremes <- function() {
  totals <- total_purchases()
  highest <- names(which.max(totals))
  lowest  <- names(which.min(totals))
  list(highest = highest, lowest = lowest)
}

# Example usage
add_customer("David", c(400, 200))
remove_customer("Bob")

totals <- total_purchases()
extremes <- find_extremes()

# Display results
totals
extremes
