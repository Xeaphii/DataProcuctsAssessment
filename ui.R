library(shiny)

shinyUI(fluidPage(
        
        # Application title
        titlePanel("Car Purchase Advisor"),
        
        # Sidebar with a slider input for the number of bins
        sidebarLayout(
                sidebarPanel(
                        sliderInput("acceleration",
                                    "Choose Acceleration(1/4 mile time) value:",
                                    min = 14.50,
                                    max = 22.90,
                                    value = 18),
                        sliderInput("weight",
                                    "Choose Weight (lb/1000) value:",
                                    min = 1.513 ,
                                    max = 5.424,
                                    value = 2)
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        h3("Results of prediction"),
                        h4("For Automatic Car"),
                        verbatimTextOutput("automaticmpg"),
                        h4("For Manual Car"),
                        verbatimTextOutput("manualmpg"),
                        h4("CHange in MPG (Manual-Automatic):"),
                        verbatimTextOutput("change"),
                        h4("Documentation"),
                        p("This is a statistics application which will guide you in getting better car. Like for given acceleration and weight value of that car, it will predict that what car transmission type you choose. This application will take two arguments. First of them is Acceleration(1/4 mile time) value and other one is Weight (lb/1000). And it calculates Miles/(US) gallon for automatic transmission type and then it will calculates for manual transmission type.And in then it calculates change in mpg value of manual transmission type minus automation transmission type. 
")
                        
                )
        )
))