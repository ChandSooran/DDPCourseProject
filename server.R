# Chand Sooran - Developing Data Products
# Course Project - December 2015
# Charting single stocks with technical indicators

# server.R

# Initiate required libraries
library(quantmod)
library(TTR)
library(shiny)

shinyServer(
  function(input, output) {
    
    data <- reactive({
      getSymbols(input$ticker, src = "google",
        from = input$dates[1],
        to = input$dates[2],
        auto.assign = FALSE)
    })
    
    technical <- reactive({
      # technical.length <- length(input$indicators)
      technical.analysis <- input$indicators
      for(i in 1:length(input$indicators)) {
        technical.analysis[i] <- paste("add", input$indicators[i],"()", sep = "")
      }
      
      technical.analysis <- paste(technical.analysis, collapse =";")
      
      return(technical.analysis)
    })

    output$plot <- renderPlot({
      chartSeries(data(), theme = chartTheme("white"), 
                  type = input$type, TA = technical())
      
    })
    
   output$text1 <- renderText({
     # Documentation
     print("This section contains enough documentation to enable a novice to use the Shiny application.")
     
   })
   
   output$text2 <- renderText({
     print("Investors often find it useful to chart the time series of individual securities in order to")
   })
   
   output$text3 <- renderText({
     print("look for potential patterns or evidence of structural change in the data generating process.")
   })
   
   output$text4 <- renderText({
     print("There are tools, called technical indicators, that investors use to detect trends and other patterns.")
   })
   
   output$text5 <- renderText({
     print("I have included four such technical indicators: MACD ('moving average convergence divergence'), Bollinger Bands, Exponential Moving Average, and Volume.")
   })
   
  output$text6 <- renderText({
    print("MACD indicates trend, Bollinger Bands indicate range around the trend, EMA shows trend in another way, and volume is self-explanatory.")
  })
  
  output$text7 <- renderText({
    print("Input the ticker in the text box for the stock you wish to evaluate, select the type of chart,")
  })
  
  output$text8 <- renderText({
    print("you want, select from the list of available technical indicators, and choose a date range over")
  })
  
  output$text9 <- renderText({
    print("which you want to evaluate the security.")
  })
  
  output$text10 <- renderText({
    print("In addition to a straightforward chart, bar charts and candlesticks show additional information")
  })
  
  output$text11 <- renderText({
    print("about the open, high, low, and close on any given day's trading.")
  })
  
  output$text12 <- renderText({
    print("The Shiny app will be reactive to any changes the user makes in the sidebar panel for these parameters.")
    
  })
  
  output$text13 <- renderText({
    print("So, play around with the app and see how good you think the technical indicators are in describing the movement.")
  })
  
  
     
  }
)