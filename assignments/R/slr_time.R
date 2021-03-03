# sea level rise time function - while loop ESM262 HW3
# calculates year that a city will be inundated given a 3.6mm annual slr rate
# takes starting local mean sea level (m) and city elevation (m) as inputs

slr_fun <- function(sea_level, elevation){
  
  # error checking - is city already below sea level?
  elevation = ifelse(
    elevation < sea_level,
    return("City is already flooded"),
    elevation
  )
  
  # set starting year
  year = 2021
  
  # call while loop
  while(sea_level < elevation){
    
    sea_level = sea_level + .036
    year = year + 1
    
  }
  
  # return output of while loop calculation
  return(sprintf("The city will be flooded in year %s", year))
}

slr_fun(0, 2.5)