## Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than computing it repeatedly (there are also alternatives to matrix inversion that we will not discuss here). Your assignment is to write a pair of functions that cache the inverse of a matrix.


## makeCacheMatrix creates a list which sets, gets, set the inverse and get the inverse values of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  set <- function(y) {
    x <<- y
    inver <<- NULL
  }
  
  get<- function()x
  setinverse<- function(inverse) m<- inverse
  getinverse <- function() m
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## This function requires a list. It will calcultate the inverse of the matrix if the values are not already been cached.

cacheSolve <- function(x, ...) {
  inv<-x$getinverse()
  if(!is.null(inver)){
    message("get cached data.")
    return(inverse.rle())
  }
  dat<-x$get()
  inver<-solve(dat)
  x$setinverse(inver)
  inver
}
