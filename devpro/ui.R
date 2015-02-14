library(shiny)

shinyUI( pageWithSidebar(
  # Application title 
  headerPanel("Linear Regression about Profit based on Different Population"),
  sidebarPanel(
    h4("  I will implement linear regression to predict profits for a food truck.I use the data data1.txt contains two columns which first column is the population of a city and the second column is the profit  in that city."),
    h4("Please Input your Population of City in 10,000s"),
    numericInput('population', 'Population of City in 10,000s', 6, min = 5, max = 22, step = 0.5), 
    submitButton('Submit')
  ), 
  mainPanel(
    h3('Results of prediction'),
    h4('You entered'), 
    verbatimTextOutput("inputValue"), 
    h4('Prediction of Profit in $10,000s'), 
    verbatimTextOutput("prediction") 
  ) )
)
