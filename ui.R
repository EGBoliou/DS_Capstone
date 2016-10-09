library(shiny)
shinyUI(fluidPage(
  tags$head(
    tags$style(HTML("
      h1 {
          font-family:bradley hand itc;
          text-decoration:underline;
          color:#008080;
          font-style:bold;
          text-align:center;
          font-size: 60px;
          text-shadow:0 0 5px #008080, 0 0 10px #ff4da6, 0 0 20px #0099ff, 0 0 40px #009933, 0 0 100px #006622, 0 0 160px #990000;
      }  
h3 {
          font-family:bradley hand itc;
          color:#008080;
          font-style:bold;
          text-align:center;
          font-size: 30px;
          text-shadow:0 0 5px #008080, 0 0 10px #ff4da6, 0 0 20px #0099ff, 0 0 40px #009933, 0 0 100px #006622, 0 0 160px #990000;
}  

#aB1 {
  display: inline-block;
                    border-radius: 4px;
                    background-color: #990000;
                    border: 2px solid #FFFFFF;
                    color: #FFFFFF;
                    text-align: center;
                    font-family: bradley hand itc;
                    font-size: 20px;
                    font-weight: bold;
                    padding: 20px;
                    width: 15%;
                    transition: all 0.2s;
                    cursor: pointer;
                    margin: auto;
                    }

                    #aB1:hover {
                    box-shadow: 0 16px 16px 0 rgba(153,0,0,0.5), 0 12px 24px 0 rgba(255,255,255,0.15);
                    height: 125px;
                    }
                    
                   #aB2 {
                    display: inline-block;
                    border-radius: 4px;
                    background-color: #cc6600;
                    border: 2px solid #FFFFFF;
                    color: #FFFFFF;
                    text-align: center;
                    font-family: bradley hand itc;
                    font-size: 20px;
                    font-weight: bold;
                    padding: 20px;
                    width: 15%;
                    transition: all 0.2s;
                    cursor: pointer;
                    margin: auto;
                    }
                    
                    #aB2:hover {
                    box-shadow: 0 16px 16px 0 rgba(204,102,0,0.5), 0 12px 24px 0 rgba(255,255,255,0.15);
                    height: 125px;
                    }
                    
                    #aB3 {
                    display: inline-block;
                    border-radius: 4px;
                    background-color: #006622;
                    border: 2px solid #FFFFFF;
                    color: #FFFFFF;
                    text-align: center;
                    font-family: bradley hand itc;
                    font-size: 20px;
                    font-weight: bold;
                    padding: 20px;
                    width: 15%;
                    transition: all 0.2s;
                    cursor: pointer;
                    margin: auto; 
                    }
                    
                    #aB3:hover {
                    box-shadow: 0 16px 16px 0 rgba(0,102,34,0.5), 0 12px 24px 12px rgba(255,255,255,0.15);
                    height: 125px;
                    }
                    
                    #aB4 {
                    display: inline-block;
                    border-radius: 4px;
                    background-color: #002db3;
                    border: 2px solid #FFFFFF;
                    color: #FFFFFF;
                    text-align: center;
                    font-family: bradley hand itc;
                    font-size: 20px;
                    font-weight: bold;
                    padding: 20px;
                    width: 15%;
                    transition: all 0.2s;
                    cursor: pointer;
                    margin: auto;
                    }
                    
                    #aB4:hover {
                    box-shadow: 0 16px 16px 0 rgba(0,45,179,0.5), 0 12px 24px 0 rgba(255,255,255,0.15);
                    height: 125px;
                    }
                    
                    #aB5 {
                    display: inline-block;
                    border-radius: 4px;
                    background-color: #660066;
                    border: 2px solid #FFFFFF;
                    color: #FFFFFF;
                    text-align: center;
                    font-family: bradley hand itc;
                    font-size: 20px;
                    font-weight: bold;
                    padding: 20px;
                    width: 15%;
                    transition: all 0.2s;
                    cursor: pointer;
                    margin: auto; 
                    }
                    
                    #aB5:hover {
                    box-shadow: 0 16px 16px 0 rgba(102,0,102,0.5), 0 12px 24px 12px rgba(255,255,255,0.15);
                    height: 125px;
                    }

                    #text1{
                    width: 100%;
                    height: 40px;
                    background-color: #e6e600;
                    text-align: center;
                    font-style:bold;
                    color: black;
                    font-size: 30px;
                    vertical-align: middle;
                    margin-right: 0%;
                    margin-top:0%;
                    border: 2px solid #000000;
                    }

#flex-c{
    display:-webkit-flex;
    display:flex;
    background-color: black;
    height: 150px;
    width: 100%
}

#flex-item{
    margin:auto;
}

                    #caption{
                    width: 100%;
                    height: 60px;
                    color: #e6e600;
                    text-align: center;
                    font-size: 30px;
                    vertical-align: middle;
                    background-color: #000000;
                    border: 2px solid #e6e600;
                    margin-top: 0%;
                    font-family: bradley hand itc;
                    text-wrap: avoid;
                    }
                    
                    "))
  ),
  
  mainPanel(
    tags$body(style = "background-color:black; color:#008080;font-family:bradley hand itc;text-align:center;"),
    h1('Text Predictor'),
    div(
      h3('Please enter text below (with no symbols):'),
      textInput('text1', label = "", value = "", width = "100%")
      ),
    
    tags$div(class="flex-c;",
      h3('Suggested Words:'),
      tags$br(),
        p(  
             actionButton("aB1", label = verbatimTextOutput("button1"),style="background-color:#990000;color:white;font-family:bradley hand itc;",class="flex-item;"),
             actionButton("aB2", label = verbatimTextOutput("button2"),style="background-color:#cc6600;color:white;font-family:bradley hand itc;",class="flex-item;"), 
             actionButton("aB3", label = verbatimTextOutput("button3"),style="background-color:#006622;color:white;font-family:bradley hand itc;",class="flex-item;"),
             actionButton("aB4", label = verbatimTextOutput("button4"),style="background-color:#002db3;color:white;font-family:bradley hand itc;",class="flex-item;"),
             actionButton("aB5", label = verbatimTextOutput("button5"),style="background-color:#660066;color:white;font-family:bradley hand itc;",class="flex-item;"))
        ),
    tags$br(),tags$br(),
    tags$div(style="height:60px;",
      h3('Completed Phrase:'),
      p(
        verbatimTextOutput("caption")
      )
    )
    )
  )
 )