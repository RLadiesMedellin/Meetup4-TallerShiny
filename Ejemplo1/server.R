library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    x    <- gapminder$lifeExp 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = 'pink', border = 'white',
         xlab="Años", ylab="Esperanza de vida al nacer", main="")
    
  })
  
})
