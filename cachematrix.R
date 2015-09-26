
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  get <- function() input_matrix
  set <- function(input) {
    input_matrix <<- input
    inverse_matrix <<- NULL
  }
  list(set = set, get = get)
}


## Write a short comment describing this function

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  if(!is.null(inverse_matrix) & identical(input_matrix, x$get()))  {
    message("getting cached data")
    return(inverse_matrix)
  }
  message("no cached data")
  cached_matrix <- x$get()
  inverse_matrix <<- solve(cached_matrix)
  return(inverse_matrix)

}