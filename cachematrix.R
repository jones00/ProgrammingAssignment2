## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- matrix(nrow = nrow(x) , ncol = ncol(x))
  #inv <- solve(x)
  list(x, inv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  if(length(x) == 2){
    x[2]
  } else {
    if(length(x) == 1){
    solve(x[1])
    }
  }
}
