#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App'.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(function(input, output) {
    output$dtable <- DT::renderDataTable({
        if (is.null(input$fls)) {
            return(NULL)
        } else {
            data <- rio::import(input$fls$datapath)
            DT::datatable(data)
        }
    })
    
})
