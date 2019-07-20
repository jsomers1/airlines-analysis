#this code references plotly documentation at: https://plot.ly/r/lines-on-maps/

library(plotly)
library(dplyr)
library(ggplot2)


# airport locations
air <- read.csv("query-hive-41.csv")
# flights between airports
flights <- read.csv("query-hive-40.csv")
flights$id <- seq_len(nrow(flights))
colnames(flights)
# map projection
geo <- list(
  scope = 'north america',
  showland = TRUE,
  landcolor = toRGB("tan"),
  subunitcolor = toRGB("black"),
  countrycolor = toRGB("black"),
  showlakes = TRUE,
  showsubunits = TRUE,
  lakecolor = toRGB("white")
)

# first plot all flight paths for total data

plot_geo(locationmode = 'USA-states', color = I("black")) %>%
  add_markers(
    data = air, x = ~airports_complete.long, y = ~airports_complete.lat, text = ~airports_complete.origin,
    size = ~airports_complete.ct, mouse_over = "text", alpha = 0.5
  ) %>%
  add_segments(
    data = group_by(flights, id),
    x = ~flightpaths2.long1, xend = ~flightpaths2.long,
    y = ~flightpaths2.lat1, yend = ~flightpaths2.lat,
    alpha = 0.25, size = I(.1), hoverinfo = "none"
  ) %>%
  layout(
    title = '2000 and 2003 Flight Paths',
    geo = geo, showlegend = FALSE, height=800
  )






# now plot only flight paths for 2000

# airport locations
air2 <- read.csv("query-hive-48.csv")
# flights between airports
flights2 <- read.csv("query-hive-49.csv")
flights2$id <- seq_len(nrow(flights2))
#colnames(flights)
# map projection
geo <- list(
  scope = 'north america',
  showland = TRUE,
  landcolor = toRGB("tan"),
  subunitcolor = toRGB("black"),
  countrycolor = toRGB("black"),
  showlakes = TRUE,
  showsubunits = TRUE,
  lakecolor = toRGB("white")
)

plot_geo(locationmode = 'USA-states', color = I("black")) %>%
  add_markers(
    data = air2, x = ~airports_complete2.long, y = ~airports_complete2.lat, text = ~airports_complete2.origin,
    size = ~airports_complete2.ct, mouse_over = "text", alpha = 0.5
  ) %>%
  add_segments(
    data = group_by(flights2, id),
    x = ~flightpaths22.long1, xend = ~flightpaths22.long,
    y = ~flightpaths22.lat1, yend = ~flightpaths22.lat,
    alpha = 0.25, size = I(.1), hoverinfo = "none"
  ) %>%
  layout(
    title = '2000 Flight Paths',
    geo = geo, showlegend = FALSE, height=800
  )






# now plot only flight paths for 2003

# airport locations
air3 <- read.csv("query-hive-50.csv")
# flights between airports
flights3 <- read.csv("query-hive-51.csv")
flights3$id <- seq_len(nrow(flights3))
#colnames(flights)
# map projection
geo <- list(
  scope = 'north america',
  showland = TRUE,
  landcolor = toRGB("tan"),
  subunitcolor = toRGB("black"),
  countrycolor = toRGB("black"),
  showlakes = TRUE,
  showsubunits = TRUE,
  lakecolor = toRGB("white")
)

plot_geo(locationmode = 'USA-states', color = I("black")) %>%
  add_markers(
    data = air3, x = ~airports_complete3.long, y = ~airports_complete3.lat, text = ~airports_complete3.origin,
    size = ~airports_complete3.ct, mouse_over = "text", alpha = 0.5
  ) %>%
  add_segments(
    data = group_by(flights3, id),
    x = ~flightpaths23.long1, xend = ~flightpaths23.long,
    y = ~flightpaths23.lat1, yend = ~flightpaths23.lat,
    alpha = 0.25, size = I(.1), hoverinfo = "none"
  ) %>%
  layout(
    title = '2003 Flight Paths',
    geo = geo, showlegend = FALSE, height=800
  )





