library(ggplot2)
library(sf)
library(maps)

sites <- data.frame(
  code = c("OJP", "OBS", "TP", "REN", "SR", "TOR"),
  site_name = c(
    "Old Jack Pine",
    "Old Black Spruce",
    "Turkey Point",
    "Renon",
    "San Rossore",
    "Torgnon"
  ),
  country = c("Canada", "Canada", "Canada", "Italy", "Italy", "Italy"),
  lon = c(-104.692, -105.118, -80.357, 11.434, 10.910, 7.561),
  lat = c(53.916, 53.987, 42.710, 46.587, 43.731, 45.823),
  label_lon = c(-129, -129, -96, 26, 26, 26),
  label_lat = c(58.5, 53.0, 38.5, 48.5, 43.0, 46.0)
)

world <- st_as_sf(map("world", plot = FALSE, fill = TRUE))
sites_sf <- st_as_sf(sites, coords = c("lon", "lat"), crs = 4326)

map_plot <- ggplot() +
  geom_sf(data = world, fill = "#f7f8f8", color = "#d2d8da", linewidth = 0.2) +
  geom_segment(
    data = sites,
    aes(x = lon, y = lat, xend = label_lon, yend = label_lat),
    color = "#456b5f",
    linewidth = 0.4
  ) +
  geom_sf(data = sites_sf, color = "#b44b33", fill = "#b44b33", size = 2.6, shape = 21, stroke = 0.2) +
  geom_label(
    data = sites,
    aes(x = label_lon, y = label_lat, label = code),
    family = "sans",
    size = 3.2,
    linewidth = 0.15,
    label.padding = unit(0.18, "lines"),
    fill = "#ffffff",
    color = "#1f2a2a"
  ) +
  coord_sf(
    xlim = c(-170, 40),
    ylim = c(20, 75),
    expand = FALSE
  ) +
  labs(
    title = "CliCFor study sites",
    subtitle = "Study sites considered in the project after the site-selection reassessment",
    caption = "Site codes correspond to the study-sites table in the repository README."
  ) +
  theme_minimal(base_size = 11) +
  theme(
    panel.background = element_rect(fill = "#dfe9ec", color = NA),
    plot.background = element_rect(fill = "#ffffff", color = NA),
    panel.grid.major = element_line(color = "#cdd8db", linewidth = 0.2),
    axis.title = element_blank(),
    axis.text = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(face = "bold", size = 16, color = "#1f2a2a"),
    plot.subtitle = element_text(size = 10.5, color = "#3d4b4b"),
    plot.caption = element_text(size = 8.5, color = "#586565"),
    plot.margin = margin(10, 14, 10, 14)
  )

dir.create("docs/figures", recursive = TRUE, showWarnings = FALSE)

ggsave(
  filename = "docs/figures/study_sites_map.png",
  plot = map_plot,
  width = 11,
  height = 6.6,
  dpi = 220,
  bg = "#ffffff"
)
