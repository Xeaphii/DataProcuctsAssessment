library(shiny)

ManualMPG<-function(wt,qsec){11.2489+-2.9963*wt+0.9454*qsec}
AutomaticMPG<-function(wt,qsec){20.175-6.754*wt+1.181*qsec}
DeltaMPG<-function(wt,qsec){(20.175-6.754*wt+1.181*qsec)-(11.2489+-2.9963*wt+0.9454*qsec)}
shinyServer(
        function(input,output)
        {
                output$automaticmpg <- renderPrint({ManualMPG(input$weight,input$acceleration)})
                output$manualmpg    <- renderPrint({AutomaticMPG(input$weight,input$acceleration)})
                output$change       <- renderPrint({DeltaMPG(input$weight,input$acceleration)})
        }
)