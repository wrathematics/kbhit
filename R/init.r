init <- function()
{
  initialized <- -1
  
  while (initialized != 10)
  {
    clear()
    
    cat("\n\n\n")
    cat("         Press [Enter] to Continue\n\n\n")
    
    initialized <- getch()
  }
  
  clear()
  
  cat("Press 'q' to quit\n")
  
  invisible()
}
