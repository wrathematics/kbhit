/* This Source Code Form is subject to the terms of the BSD 2-Clause
 * License. If a copy of the this license was not distributed with this
 * file, you can obtain one from http://opensource.org/licenses/BSD-2-Clause. */

// Copyright 2014, Schmidt


#include <R.h>
#include <Rinternals.h>

void changemode(int dir);
int kbhit();
int getch();

SEXP R_getch()
{
  SEXP ret;
  PROTECT(ret = allocVector(INTSXP, 1));
  
  INTEGER(ret)[0] = getch();
  
  UNPROTECT(1);
  return ret;
}


SEXP R_kbhit()
{
  changemode(1);
  SEXP ret;
  PROTECT(ret = allocVector(INTSXP, 1));
  
  INTEGER(ret)[0] = kbhit();
  
  changemode(0);
  
  UNPROTECT(1);
  return ret;
}


SEXP R_getchar()
{
  SEXP ret;
  PROTECT(ret = allocVector(INTSXP, 1));
  
  changemode(1);
  
  INTEGER(ret)[0] = getchar();
  
  changemode(0);
  
  UNPROTECT(1);
  return ret;
}

