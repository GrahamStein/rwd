
## This program has two functions. 
## The first inputs a matrix and stores it. 
## The second checks for cached data. 
##If none is found it calculates and outputs the inverse matrix 

## This function inputs a matrix and stores it.

makeCacheMatrix <- function(x = matrix()) {
  get <- function() input_matrix
  set <- function(input) {
    input_matrix <<- input
    inverse_matrix <<- NULL
  }
  list(set = set, get = get)
}


## This function checks for cached data and matrix equality. 
##If negative, it calculates and outputs the inverse matrix 

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