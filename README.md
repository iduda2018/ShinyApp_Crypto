###Shiny App to Analyze Cryptocurrency 
###General Info

This application allows to monitor stock price of the crypto coins for the same day between three different coins of choice.

## Technologies

RStudio Version 1.3.1073
library(dplyr)
library(ggplot2)
library(tidyr)
library(UsingR)
library(plotly)
library(shiny)

## Installation

Available in GitHub at https://github.com/iduda2018/ShinyApp_Crypto

## Collaboration

To pick the coin there should be a check mark need to be selected near the coin of choice on a sidebar to the left. 
To pick the date there should be a date of choice in a calander search line. Once the choices of inputs are made, cursor needs to be moved to the plot on a right.
Dynamic label will appear. Cursur needs to be pointed on a desired day which is the intersection of the vertical red line, indicating the selected day,
 and line graph, indicating the price of coin on that day. To make changes, simply change the inputs on the left sidebar and point back on the
new intersection of a red line and a graph line to see the new values of a selection.



