shinyServer(
function(input, output) {
output$oid1 <- renderPrint({input$id1})
output$oid2 <- renderPrint({input$id2})
output$oid3 <- renderPrint({input$id3})
output$oid4 <- renderPrint({input$id1/input$id2})
output$odate <- renderPrint({input$tdate-input$fdate})
output$oaver <- renderPrint({((input$id1/input$id2)*100)/input$id3})
}
)
