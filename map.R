library(leaflet)

l <- leaflet() %>% setView(0,0,3) %>% addProviderTiles(providers$CartoDB.Positron)
l
