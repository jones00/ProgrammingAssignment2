## a set of functions to calculate the inverse of a matrix and cache it´s results.
# It´s usefull when you need to calculate multiple times the inverse of a big matrix, as it avoids running the 
# same calculations multiple times.


## makeCacheMatrix has parameter x, an object of the class matrix and sets up a free variable to cache the inverse.
# it returns the x matrix as the new cached.matrix object.
makeCacheMatrix <- function(x = matrix()) {
    globalCachedMatrix <<- NULL
    class(x) <- "cached.matrix"
    x
}


## cacheSolve calculates the inverse of a matrix x and sets the free variable.
# It always returns the inverse of x regardless of it been previously cached or not
cacheSolve <- function(x, ...) {
  if(class(x) == "cached.matrix"){
  if(is.null(globalCachedMatrix)){
    #The inverse is not cached, solve it and then cache it.
        globalCachedMatrix <<- solve(x, ...)
  }
  #there is a cached value, return it.
  globalCachedMatrix
  } else {
    print("Error: Object is not inicialized with makeCachedMatrix()." )
  }
}
