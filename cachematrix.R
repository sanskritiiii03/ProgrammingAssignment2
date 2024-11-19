## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Initialize the inverse as NULL
  
  # Set the matrix value
  set <- function(y) {
    x <<- y  # Assign the input matrix to 'x'
    inv <<- NULL  # Reset the inverse cache to NULL when the matrix changes
  }
  
  # Get the matrix value
  get <- function() {
    return(x)
  }
  
  # Set the inverse of the matrix
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  
  # Get the cached inverse of the matrix
  getInverse <- function() {
    return(inv)
  }
  
  # Return a list of the functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
