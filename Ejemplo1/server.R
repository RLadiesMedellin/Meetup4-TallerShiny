library(shiny)

shinyServer(function(input, output) {
   
  output$Mihistograma <- renderPlot({
    lf    <- gapminder$lifeExp 
    intervalos  <- seq(min(lf), max(lf), length.out = input$intervalos + 1)
    hist(lf, breaks = intervalos, col = 'darkorchid3', border = 'white',
         xlab = "Esperanza de vida al nacer (Años)", ylab = "Frecuencia", 
         main = "")
    
  })
  
})
