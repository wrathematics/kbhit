keyboard_handler <- function(ch)
{
  if (ch == 113)
  {
    return( NULL )
  }
  else if (ch == "")
  {
    cat(".")
  }
  else
  {
    cat(paste(": ", ch, "\n", sep=""))
  }
  
  return(0)
}

