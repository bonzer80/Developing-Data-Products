

BMI<-function(Weight,Height) {Weight/(Height^2)}*10000

diagnostic_f<-function(Weight,Height){
  BMI_value<-{Weight/(Height^2)}*10000
  ifelse(BMI_value<18.5,"Underweight",ifelse(BMI_value<25,"Healthy",ifelse(BMI_value<30,"Overweight","Obese")))
}

shinyServer(
  function(input, output) {
    
    output$Weight <- renderPrint({input$Weight})
    output$Height <- renderPrint({input$Height})
    output$estimation <- renderPrint({BMI(input$Weight,input$Height)})
    output$diagnostic <- renderPrint({diagnostic_f(input$Weight,input$Height)})
  } 
)