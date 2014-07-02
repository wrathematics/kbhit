kbhit <- function()
{
  .Call("R_kbhit")
}

getchar <- function()
{
  .Call("R_getchar")
}

getch <- function()
{
  .Call("R_getch")
}



ch_set <- function(ch="")
{
  assign("__ch", ch, envir=.GlobalEnv)
  invisible()
}

ch_get <- function()
{
  get(x="__ch", envir=.GlobalEnv)
}


ch <- function()
{
  ch <- ch_get()
  ch_set()
  
  return( ch )
}

