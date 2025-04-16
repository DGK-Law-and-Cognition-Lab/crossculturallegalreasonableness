packages <- c("ggplot2", "tidyverse", "readxl")
invisible(lapply(packages, library, character.only = TRUE))

data <- read_excel("Medians by item relabeled.xlsx")
glimpse(data)

# Separate the data based on conditions
average_data <- filter(data, Condition == "Average") %>% 
    rename(Median_average = Median)
ideal_data <- filter(data, Condition == "Ideal") %>% 
    rename(Median_ideal = Median)
reasonable_data <- filter(data, Condition == "Reasonable") %>% 
    rename(Median_reasonable = Median)

# Merge the data to compare values and assign color and shapes
comparison_data <- reasonable_data %>%
    left_join(average_data, by = c("Country", "Item")) %>%
    left_join(ideal_data, by = c("Country", "Item")) %>%
    mutate(
        Color = ifelse(Median_reasonable >= Median_average & Median_reasonable <= Median_ideal |
                           Median_reasonable <= Median_average & Median_reasonable >= Median_ideal, 
                       "#4682B4", "#B4464B"),
        Shape = case_when(
            Median_ideal < Median_average ~ 'Less',                         # Downward triangle (shape 25)
            Median_ideal > Median_average ~ 'More',                         # Upward triangle (shape 24)
            Median_ideal == Median_average ~ 'Equal'                       # Circle (shape 21) for equal values                    # No shape for other cases
        ),
        Ratio = log2(Median_ideal/Median_average),
        TextSize = as.factor(ceiling(log10(Median_reasonable+1)))
    ) 

CountryLabels = c('Brazil' = 'BR', 
                  'Colombia' = 'CO',
                  'Germany' = 'DE',
                  'India' = 'IN',
                  'Italy' = 'IT',
                  'Lithuania' = 'LT',
                  'Netherlands' = 'NL',
                  'Poland' = 'PL',
                  'Spain' = 'ES',
                  'USA' = 'US')
    

ggplot(comparison_data, aes(x = Country, y = reorder(Item, Ratio), 
                            fill = Color, color = Color)) + 
  geom_point(aes(shape = Shape), size = 5, alpha = .9, stroke = 1,
             show.legend = FALSE) + # Set shapes based on comparison
  geom_text(aes(label = paste0("  ", as.character(round(Median_reasonable))),
                size = TextSize, group = paste(Country, Item)),
            hjust = 0.6, vjust = .4, color = 'white',
            position = ) + # Adjust text position
  scale_fill_manual(values = c('navy', 'firebrick')) + # Use the colors as they are for fill
  scale_color_manual(values = c('navy', 'firebrick')) + # Use the colors as they are for border
  scale_x_discrete(labels = CountryLabels, position = 'top') +
  scale_size_manual(values = c(2.5, 2.5, 2.5, 2, 1.7, 1.4)) +
  scale_shape_manual(values = c(21, 25, 24)) +
  theme_minimal() +
  theme(axis.title.y = element_blank(), 
        legend.position = 'none',
        text = element_text(color = 'black'),
        axis.text.x = element_text(face = 'bold', color = 'black'),
        panel.grid.major = element_blank(),
        axis.title.x = element_blank(), # Rotate x-axis labels for clarity
        panel.spacing.y = unit(500, "lines")) # Increase space between rows

# Save the figure
ggsave("Figure1b.jpg", dpi = 300, width = 16, height = 25, units = "cm")


