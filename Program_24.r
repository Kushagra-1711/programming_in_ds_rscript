#Closing prices of the stock
closing_prices <- c(120, 122, 118, 121, 119, 117, 123, 125, 126, 124, 128, 130, 129, 131, 135, 134, 136, 137, 140, 138, 139, 141, 142, 144, 143, 145, 146, 148, 147, 149)

#Calculating daily returns in percentage
Find_daily_returns <- diff(closing_prices) / head(closing_prices, -1) * 100

#Finding highest and lowest daily returns
highest_return_day <- which.max(daily_returns) + 1
lowest_return_day <- which.min(daily_returns) + 1

#Calculating cumulative return over the month
cumulative_return <- (tail(closing_prices, 1) - head(closing_prices, 1)) / head(closing_prices, 1) * 100

#Displaying the results
cat("the daily returns (percentage change) of the stock:", Find_daily_returns, "\n")
cat("the days with the highest return: ", highest_return_day, "the days with the lowest return:  ", lowest_return_day, "\n")
cat("the Cummulative return over the month ", cumulative_return, "\n")
