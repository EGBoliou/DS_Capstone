gram2 <- read.csv("data/gram2_fin.csv", stringsAsFactors = FALSE)
gram3 <- read.csv("data/gram3_fin.csv", stringsAsFactors = FALSE)
gram4 <- read.csv("data/gram4_fin.csv", stringsAsFactors = FALSE)
gram5 <- read.csv("data/gram5_fin.csv", stringsAsFactors = FALSE)
gram6 <- read.csv("data/gram6_fin.csv", stringsAsFactors = FALSE)

library(quanteda)
library(dplyr)

predFinal <- function(text1){
  ttk = tokenize(tolower(text1))
  ttk = unlist(ttk)
  wc = length(ttk)
  lt = ttk[length(ttk)]
  
  if (wc < 6){
    wu = wc
    ss = 1
  } else {
    wu = 5
    ss = wc-4
  }
  
    pp <- as.character(c())
    
while (length(pp) <5 && wu >0){
  
    preddf <- as.data.frame(c())
    swd <- as.character(c())
    for (i in ss:wc){
      if (i == ss){
        swd <- ttk[i]
      }else{
      swd <- paste(swd, ttk[i], sep = " ")
      }
    }
  
  grm = wu + 1
  
  if (grm == 2){
    gdf = gram2
  }
  if (grm == 3){
    gdf = gram3
  }
  if (grm == 4){
    gdf = gram4
  }
  if (grm == 5){
    gdf = gram5
  }
  if (grm == 6){
    gdf = gram6
  }
  
  #filter to get preddf
  preddf <- filter(gdf, String == swd)
  preddf <- filter(preddf, pWord != lt)
  preddf <- arrange(preddf, desc(Ratio))
  
  #create pp string
  k <- nrow(preddf)
  if (k > 5){
    k = 5
  }
  
  if (k > 0){
    s <- length(pp)
    for (i in 1:k){
      pp[s+i] <- preddf[i,2]
    }
  }
  
  #lower wu and increase ss
  wu = wu-1
  ss = ss+1
  
  #run loop starting with creating swd, grm and gdf
  pna <- is.na(pp)
  pp <- pp[pna==FALSE]
  pp <- unique(pp)
}
  
  if(length(pp)<5){
    return(pp)
  }else{
    return(pp[1:5])
  }  
  
}

