library(shiny)

shinyUI(fluidPage(
  titlePanel("censusVis"),
  
  sidebarLayout(
    
    sidebarPanel(
      helpText("Create demographic maps with 
        information from the 2010 US Census."),
      
      selectInput("var", 
                  label = "Choose a variable to display",
                  choices = c("Percent White", "Percent Black",
                              "Percent Hispanic", "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
    ),
    
    mainPanel(
      h1(textOutput("text1")),
      h2(textOutput("text2")),
      plotOutput("map")
    )
  )
))