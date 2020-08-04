library(shiny)
library(gapminder)
library(ggplot2)
library(plotly)

ui <- fluidPage(
  titlePanel("Esperanza de vida al nacer vs PIB"),
  sidebarLayout(
    position = c("left", "right"), fluid = TRUE,
    sidebarPanel(
      selectInput(inputId = "var_country", label = "Selecciona un país:", 
                  choices = levels(gapminder$country)), 
      sliderInput(inputId = "var_year", label = "Año:",
                  min = min(gapminder$year),
                  max = max(gapminder$year),
                  value = min(gapminder$year), 
                  step = 5,
                  animate = animationOptions(interval = 1000,loop = TRUE)),
      checkboxInput(inputId = "var_continent",
                    label = strong("Mostrar continentes en color."), 
                    value = FALSE)
    ),
    mainPanel(
      plotOutput("thisPlot")
    )
  )
)

