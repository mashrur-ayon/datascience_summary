library(shiny)
library(ggplot2)
ui <- fluidPage(
  textInput("name", "Enter a name:"),
  selectInput("animal", "Dogs or cats?", choices = c("dogs", "cats")),
  textOutput("greeting"),
  textOutput("answer")
)
server <- function(input, output, session) {
  output$greeting <- renderText({
    paste("Do you prefer dogs or cats,", input$name, "?")
  })
  output$answer <- renderText({
    paste("I prefer", input$animal, "!")
  })
}

shinyApp(ui=ui, server=server)