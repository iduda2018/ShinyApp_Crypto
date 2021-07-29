###General Info

This application allows to find Closed Stock Prices for the same day between three different coins of choice.

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

To pick the coin there should be a check mark near the coin of choice on a sidebar. There is only 1 choice at a time allowed.
To pick the date there should be a date of choice in a calander search line. Once the choice of inputs are made, coursor need to be on a plot.
Dynamic label will allow to see the price on a desired day by pointing it on the intersection of the vertical red line, indicating desired day,
 and line graph, indicating the price of coin on that day. To make changes, simply change the inputs on the left sidebar and point back on the
new intersection of a red line and a graph line to see the values of Price of the Coin.



