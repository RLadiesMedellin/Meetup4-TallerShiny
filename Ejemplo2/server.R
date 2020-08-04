server = function(input, output) {
  output$thisPlot <- renderPlot({
    
    years <- gapminder[gapminder$year == input$var_year, ]
    idcountry <- which(years$country == input$var_country)
    rangepop <- range(gapminder$pop)
    
    p <- ggplot(years, aes(gdpPercap, lifeExp, size = pop)) +
      geom_point(alpha = 1/3) + 
      ylim(20, 90) + 
      geom_text(aes(years$gdpPercap[idcountry], years$lifeExp[idcountry]), 
                label = input$var_country, size = 8, color = "black") +
      scale_x_log10(limits = range(gapminder$gdpPercap)) + 
      scale_size(guide = "none", range = c(1,20)*range(years$pop)/rangepop) + 
      labs(x = "PIB", y = "Esperanza de vida al nacer (años)") 
    if (!input$var_continent) print(p)
    if (input$var_continent) p + geom_point(aes(color = continent)) +
      scale_color_manual(values = c("orange","green","blue","red","brown"))
    })
}