library(shiny)

shinyUI(fluidPage(
  
  titlePanel(h1("My Shiny App")),
  
  sidebarLayout(
    
    sidebarPanel(
      h1("Installation"),
      p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
      code('install.packages("shiny")'),
      br(),
      br(),
      br(),
      br(),

      img(src="bigorb.png", height = 72, width = 72),
      "shiny is a product of ", 
      span("RStudio", style = "color:blue")
    ),
  
      mainPanel(
      h1("Introducting Shiny"),
      p("Shiny is a new package from RStudio that makes it incredibly easy to build interactive web application with R"),
      br(),
      p("For an introduction and live examples, visit the Shiny homepage",
        a("Shiny homepage.", 
          href = "http://www.rstudio.com/shiny")
        ),
      br(),
      h1("Features"),
      p("* Build useful web applications with only a few lines of code - no javascript required"),
      p("* Shiny applications are autometically \"live\" in the same way that",
        strong("spreadsheets"),
        "are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser")
      
    )
  )
))