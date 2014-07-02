main <- function()
{
  init()
  
  ch_set()
  
  while(TRUE)
  {
    while(!kbhit())
    {
      ch <- ch_get()
      
      if(is.null(keyboard_handler(ch)))
      {
        cat("\n")
        return(invisible())
      }
      
      ch_set()
      Sys.sleep(.5)
    }
    
    ch_set(getchar())
  }
  
  invisible()
}

