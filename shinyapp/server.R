library(shiny)

bmi <- function(height, weight) {
  weight / (height/100)^2
}

shinyServer(
  function(input, output) {
    output$height <- renderPrint({input$height})
    output$weight <- renderPrint({input$weight})
    
    output$bmi <- renderPrint({bmi(input$height, input$weight)})
  }
)