shinyUI(pageWithSidebar(
  headerPanel("Average Fuel spends on 100 Kms."),
  sidebarPanel(
    h3('Input our data here:'),
    sliderInput('id1', 'Amount of fuel placed ($):', min=0, max=75, value=40, step=1, round=0),
    numericInput('id2', 'Price of fuel ($):', 1.343),
    numericInput('id3', 'Kilometres Traveled (Km):', value=400, step=1),
    dateInput('fdate', "From day:", value = Sys.Date() - 7, format = "dd/mm/yyyy", startview = "month", weekstart = 1),
    dateInput('tdate', "To day:", value = Sys.Date(), format = "dd/mm/yyyy", startview = "month", weekstart = 1),
    h6('Only the first three fields is are mandatory.')
  ),
  mainPanel(
    h3('Output Results:'),
    h4('Amount of Liters:'),
    verbatimTextOutput("oid4"),
    h4('Kilometres:'),
    verbatimTextOutput("oid3"),
    h4('Time of days:'),
    verbatimTextOutput("odate"),
    h4('Average spend per 100Km:'),
    verbatimTextOutput("oaver"),
    h6('This application was made to find the average fuel consumed by a vehicle every 100 Kilometres.')
  )
))
