# Step 1 (Run only once)
# install.packages("leaflet")

# Step 2
library(leaflet)

# Step 3: Define coordinates (Katpadi region)
lat <- 12.9692
lng <- 79.1559

# Step 4: Initialize map
map <- leaflet() %>%
  addTiles() %>%
  setView(lng = lng, lat = lat, zoom = 13)

# Display base map
map

# Step 5: Add marker with popup
map <- map %>%
  addMarkers(
    lng = lng,
    lat = lat,
    popup = "Katpadi Region"
  )

# Display map with marker
map

# Step 6: Add customized circle marker
map <- map %>%
  addCircleMarkers(
    lng = lng,
    lat = lat,
    color = "red",
    radius = 10,
    label = "Katpadi - Circle Marker"
  )

# Display final map
map