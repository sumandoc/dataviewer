#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application
shinyUI(fluidPage(
    # Application title
    titlePanel("Data Viewer"),
    
    # Sidebar with a file input
    sidebarLayout(sidebarPanel(
        fileInput(
            "fls",
            "Select data: csv or spss or xlsx",
            buttonLabel = "Select file",
            accept = c(".csv", ".xlsx")
        )
    ),
    
    mainPanel(DT::dataTableOutput("dtable")))
))
