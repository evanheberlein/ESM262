# flood risk function - case_when function ESM262 HW3
# classifies flood risk based on tide height
# takes tide height as input and provides alert if necessary

risk_fun <- function(tide_height){
  if (tide_height > 0) {
    
    # define classes of flood risk
    risk = case_when( tide_height > 4 ~ "flood emergency",
                      tide_height > 3 ~ "flood warning",
                      tide_height > 2 ~ "flood watch",
                      tide_height > 0 ~ "high tide"
                      
    )
  }
  
  # define negative tides
  else risk = "low tide"
  
  # print warning level for tide height
  return(risk)
}