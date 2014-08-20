## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    global <<- NULL
    x
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  if(!is.null(global)){
    print("valor encontrado no cache:")
    global
  } else {
    print("nenhum valor em cache")
    print("calculando...")
    global <<- solve(x)
    global
  }
}
