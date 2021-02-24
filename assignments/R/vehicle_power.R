# Vehicle Power function

v_power <- function(V, m, # Set coefficients below
                    crolling = 0.015,
                    cdrag = 0.3,
                    g = 9.8,
                    p_air = 1.2,
                    A = 9 # Surface area is 3m x 3m
                    )
  {
  # Power function, units in watts
  Pb <- (crolling * m * g * V) + ((1/2) * A * p_air * cdrag * (V)^3)
  
  return(Pb)
  
}

m <- 31752 # Truck mass is 31752kg

# v_power(V = 30, m)
