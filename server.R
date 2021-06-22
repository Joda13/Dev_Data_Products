library(shiny)
library(datasets)

airqualityData <- airquality

shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste("Ozone ~", input$variable)
    })
    
    formulaTextPoint <- reactive({
        paste("Ozone ~", input$variable)
    })
    
    fit <- reactive({
        lm(as.formula(formulaTextPoint()), data=airqualityData)
    })
    
    output$caption <- renderText({
        formulaText()
    })
    
    
    output$fit <- renderPrint({
        summary(fit())
    })
    
    output$airqualityPlot <- renderPlot({
        with(airqualityData, {
            plot(as.formula(formulaTextPoint()))
            abline(fit(), col=2)
        })
    })
    
})
