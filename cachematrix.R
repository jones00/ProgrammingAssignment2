## a set of functions to calculate the inverse of a matrix and cache it´s results.
# It´s usefull when you need to calculate multiple times the inverse of a big matrix, as it avoids running the 
# same calculations multiple times.


## makeCacheMatrix has parameter x, any object of the class matrix and sets up a free variable to cache the inverse.
# it returns matrix as the new object.
makeCacheMatrix <- function(x = matrix()) {
    globalCachedMatrix <<- NULL
    x
}


## cacheSolve calculates the inverse of a matrix x and sets the freevariable.
# It always returns the inverse of x regardless of it been previously cached or not
cacheSolve <- function(x, ...) {
  if(is.null(globalCachedMatrix)){
        globalCachedMatrix <<- solve(x, ...)
  }
  #there is (now, at least) a cached value, return it
  globalCachedMatrix
}
