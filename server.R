
library(shiny)

# Load Data

population <- read.csv("./mexican_population.csv")

# This is our shiny server
function(input, output) { 
  
  output$number_of_people <- renderPlot({ 
    
    # Plotting a barplot 
    barplot(population[,input$State],  
            main=input$State, 
            ylab="Count of Mexicans", 
            xlab="Year") 
  })
}
