library(shiny)

shinyUI(fluidPage(
  titlePanel("Body Mass Index calculator"),
  sidebarLayout(
    sidebarPanel(
      helpText("This application calculates your BMI value based on your height and weight."),
      helpText("Please enter your parameters:"),
      sliderInput(inputId = "Height",
                  label = "Your height in centimeters:",
                  value = 130,
                  min = 130,
                  max = 200,
                  step = 1),
      sliderInput(inputId = "Weight",
                  label = "Your weight in kilograms:",
                  value = 40,
                  min = 40,
                  max = 150,
                  step = 1)
    ),
    
    
    
    mainPanel(
      p('Body Mass Index or BMI is used as a screening tool to indicate whether a person is underweight, overweight, obese or a healthy weight for their height.'),
      p('BMI is the body mass or weight (kg) divided by the square of the body height (m). '),
      p('A broad classification of BMI values is given below.'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI [18.5-24.9] : Healthy'),
          tags$li('BMI [25-29.9]   : Overweight'),
          tags$li('BMI >=30        : Obese')
        )
      ),
      
      #       h4('Based on the values entered by you:'), 
      p('Weight:'), verbatimTextOutput("Weight"),
      p('Height:'), verbatimTextOutput("Height"),
      p('Your BMI is:'),
      verbatimTextOutput("estimation"),
      p('Your BMi indicates that you are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)
)
