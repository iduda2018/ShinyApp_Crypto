library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Coin Prices 2017"),
  sidebarPanel(
    h3('Type of Coin:'),
    radioButtons("coin","Chose one",
                       c("ripple"= "ripple",
                         "bitcoin" = 'bitcoin',
                         "ethereum" ='ethereum')),
    dateInput("date","Date:",value='2017-01-01', min='2017-01-01', max='2017-12-31',
              datesdisabled = c('2018-01-01', '2021-12-31'),startview = 'year')),
  mainPanel(plotlyOutput('coins'))
))