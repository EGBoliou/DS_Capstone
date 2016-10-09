
library(quanteda)
library(dplyr)

source("predFinal.R")

shinyServer(
  function(input, output,session){
    text1 <- reactive({
    req(input$text1)
    })
    
    output$button1 <- renderText({
      texty <- input$text1
      predFinal(text1 = texty)[1]
    })
    output$button2 <- renderText({
      texty <- input$text1
      predFinal(text1 = texty)[2]
    })
    output$button3 <- renderText({
      texty <- input$text1
      predFinal(text1 = texty)[3]
    })
    output$button4 <- renderText({
      texty <- input$text1
      predFinal(text1 = texty)[4]
    })
    output$button5 <- renderText({
      texty <- input$text1
      predFinal(text1 = texty)[5]
    })
    
    observeEvent(input$aB1,{
        texty <- input$text1
        outb1 <- predFinal(text1 = texty)[1]
      output$caption <- renderText({
        paste(input$text1,outb1, sep=" ")
      })
    })
    observeEvent(input$aB2,{
      texty <- input$text1
    outb1 <- predFinal(text1 = texty)[2]
    output$caption <- renderText({
      paste(input$text1,outb1, sep=" ")
      })
    })
    observeEvent(input$aB3,{
      texty <- input$text1
    outb1 <- predFinal(text1 = texty)[3]
    output$caption <- renderText({
      paste(input$text1,outb1, sep=" ")
      })
    })
    observeEvent(input$aB4,{
      texty <- input$text1
    outb1 <- predFinal(text1 = texty)[4]
    output$caption <- renderText({
      paste(input$text1,outb1, sep=" ")
      })
    })
    observeEvent(input$aB5,{
      texty <- input$text1
    outb1 <- predFinal(text1 = texty)[5]
    output$caption <- renderText({
      paste(input$text1,outb1, sep=" ")
      })
    })
  }
)
