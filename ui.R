shinyUI(pageWithSidebar(
  headerPanel("Average Fuel spends on 100 Kms."),
  sidebarPanel(
    sliderInput('id1', 'Number of Liters:', min=0, max=75, value=0, step=5, round=0),
    numericInput('id2', 'Kilometres Traveled:', 350),
    dateInput('fdate', "From day:"),
    dateInput('tdate', "To day:")
  ),
  mainPanel(
    h3('Output Results:'),
    h4('Liters:'),
    verbatimTextOutput("oid1"),
    h4('Kilometres:'),
    verbatimTextOutput("oid2"),
    h4('Time of days:'),
    verbatimTextOutput("odate"),
    h4('Average spend per 100Km:'),
    verbatimTextOutput("oaver")
  )
))