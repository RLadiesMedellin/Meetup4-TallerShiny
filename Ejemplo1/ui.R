library(shiny)
library(gapminder)

shinyUI(fluidPage(
  
  titlePanel(tags$em(tags$strong("Esperanza de vida al nacer"))),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput(inputId = "intervalos",
                   label = "Número de intervalos:",
                   min = 1,
                   max = 50,
                   value = 40),
       
       tags$h6(tags$b("Desarrolado por:")),
       tags$img(src = "LogoRLadiesTras.png", height = 110, weight = 110)
    ),
    
    mainPanel(
       plotOutput("Mihistograma")
    )
  )
))
