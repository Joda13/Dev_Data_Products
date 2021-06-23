library(shiny)

shinyUI(
    navbarPage("Shiny Application",
               tabPanel("Analysis",
                        fluidPage(
                            titlePanel("Ozone concentration and its relation to Temperature, Solar Radiation, and Wind"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("Temperature (in F)" = "Temp",
                                                  "Solar Radiation (in lang)" = "Solar.R",
                                                  "Wind (in mph)" = "Wind"))),
                                mainPanel(
                                    h3(textOutput("caption")),
                                    plotOutput("airqualityPlot"),
                                    verbatimTextOutput("fit"))))),
    					 
               tabPanel("Data Information",
                        h3("Airquality data"),
                        p("This datasets allows to investigate the relationship between airquality (measured by Ozone concentration) and other meteorological variables like Temperature, Solar Radiation and Wind."),
                        p("It contains daily air quality measurements in New York, May to September 1973."),
                        p("It includes 153 observations on 6 variables and can be used in the datasets package."),
                        h3("Format"),
                        p("Ozone (in ppb)"),
                        p("Solar Radiation (in lang)"),
                        p("Temperature (in degrees F)"),
                        p("Month (1-12)"),
                        p("Wind (in mph)"),
                        p("Day of month (1-31)"),
                        h3("Source"),
                        p("The data were obtained from the New York State Department of Conservation (ozone data) and the National Weather Service (meteorological data)."))))