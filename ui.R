# Chand Sooran - Developing Data Products
# Course Project - December 2015
# Charting single stocks with technical indicators

# ui.R

# Initiate required libraries
library(quantmod)
library(TTR)
library(shiny)

shinyUI(fluidPage(
  titlePanel("Technical Analysis - US Equities - Chand Sooran"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create charts of US single stocks with technical indicators."),
      
      textInput(inputId = "ticker",
                label = "Input US single stock ticker:",
                value = "AAPL"),
      
      checkboxGroupInput(inputId = "indicators",
                         label = "Select Technical Indicators:",
                         choices = c("MACD" = "MACD", "Bollinger Bands" = "BBands", "EMA" = "EMA", "Volume" = "Vo"),
                         selected = "MACD"),
      
      radioButtons(inputId = "type",
                   label = "Select Chart Type:",
                   choices = c("Bar" = "bars",
                               "Line" = "line",
                               "Candlestick" = "candlesticks"),
                   selected = "candlesticks"),
      
      dateRangeInput(inputId = "dates",
                    label = "Input Date Range:",
                    format = "yyyy-mm-dd",
                    start = Sys.Date() - 365,
                    end = Sys.Date())

      
    ),
    
    mainPanel(plotOutput("plot"),
              tags$div(
                HTML("<br/>")
              ),
              tags$div(
                HTML("<strong> DOCUMENTATION </strong>")
              ),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text1"),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text2"),
              textOutput("text3"),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text4"),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text5"),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text6"),
              textOutput("text7"),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text8"),
              textOutput("text9"),
              textOutput("text10"),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text14"),
              textOutput("text11"),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text12"),
              tags$div(
                HTML("<br/>")
              ),
              textOutput("text13"))
  )
))