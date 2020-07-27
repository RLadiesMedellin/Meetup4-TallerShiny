library(shiny)
library(gapminder)

shinyUI(fluidPage(
  
  titlePanel("Esperanza de vida al nacer (años) "),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Número de intervalos:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
