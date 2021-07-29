
rm(list = ls())
graphics.off()

# Libraries
library(dplyr)
library(ggplot2)
library(tidyr)
library(UsingR)
library(plotly)

df <- read.csv('./coin_prices_2017.txt',
               header = T, sep = "\t", colClasses = "character")
shinyServer(
  function(input,output) {
   #mycoin<-reactive({
   #  req(input$coin) <-
   #  df%>%filter(COIN==input$coin)})
    
    df_m<-reactive({df%>%dplyr::select(COIN, COIN_ABR,DATE,CLOSE) %>%
      filter(COIN == input$coin)%>%
      mutate(DATE=as.Date(DATE),
             CLOSE=as.numeric(CLOSE))
    })
   output$coins <- renderPlotly({
   df_m<-req(df_m())
    ggplotly(
      ggplot(df_m,aes(x=DATE, y=CLOSE))+
          geom_line()+
          geom_vline(aes(xintercept =as.numeric(as.Date(input$date))),col="red",lwd=1)+
          xlab("Date")+
          ylab("Closed Price")+
          theme(axis.text.x = element_text(angle = 45))+
          ggtitle("Coin in 2017")
    )
    

    })
  }
)

head(df_m)
