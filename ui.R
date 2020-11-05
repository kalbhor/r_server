library(shiny)


# Loading the data about mexican population state wise in USA

population <- read.csv("./mexican_population.csv")


fluidPage(     
  
  # Give the page a title 
  titlePanel("Mexican population per state"), 
  
  sidebarLayout(       
    
    
    # A sidebar for input 
    sidebarPanel(selectInput("State", "State:",  
                             choices=colnames(population)), 
                 hr(), 
    ), 
    
    mainPanel( 
      plotOutput("number_of_people")   
    ) 
    
  ) 
) 