# Initialize sports team scores
teams <- list(
  "Team A" = c(90, 85, 88),
  "Team B" = c(78, 82, 79),
  "Team C" = c(88, 92, 90)
)

# Function to add a new team with scores
add_team <- function(team, scores) {
  teams[[team]] <<- scores
}

# Function to remove a team
remove_team <- function(team) {
  teams[[team]] <<- NULL
}

# Function to calculate average score for each team
average_scores <- function() {
  sapply(teams, mean)
}

# Function to rank teams based on average scores
rank_teams <- function() {
  avg <- average_scores()
  sort(avg, decreasing = TRUE)
}

# Example usage
add_team("Team D", c(85, 87, 89))
remove_team("Team B")

avg_scores <- average_scores()
team_ranking <- rank_teams()

# Display results
avg_scores
team_ranking
