library(shiny)

data<-read.table("data1.txt",sep=",",header = F)
names(data)<-c("population","profit")

fit<-lm(profit~population,data=data)
intercept<-fit$coefficients[1]
slope<-fit$coefficients[2]

pprofit<-function(predict_population){
  slope*predict_population+intercept 
}


shinyServer( 
  function(input, output) {
  output$inputValue <- renderPrint({input$population})
  output$prediction <- renderPrint({pprofit(input$population)}) 
  }
)