library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body weigh index calculator"),
    
    sidebarPanel(
      p("Steps: "),
      p("1. Enter your height in centimeters"),
      p("2. Enter you weight in kilograms"),
      p("3. Check your BMI result."),
      
      sliderInput("height", "Height (cm): ", 170.0, min = 30, max = 270, step = 0.5),
      sliderInput("weight", "Weight (kg): ", 70.0, min = 0, max = 500, step = 0.5)
    ),
    
    mainPanel(
      h3("Body mass index (BMI)"),
      
      h4("Your height is (cm):"),
      verbatimTextOutput("height"),
      
      h4("Your weight is (kg):"),
      verbatimTextOutput("weight"),
      
      h4("Body mass index (BMI): "),
      verbatimTextOutput("bmi")
    )
  )
)