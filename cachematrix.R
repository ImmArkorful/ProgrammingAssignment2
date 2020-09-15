## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function gets a matrix and calculates the inverse of the matrix
##It then stores the inverse of the matrix in the cachee
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, 
       setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
##This function first checks to see if the inverse of a particular matrix exists
##If not, it goes on to calculate it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message('getting cached data')
    return(inv)
  }
  data <- x$get()
  inv <- solve(x)
  x$setinverse(inv)
  inv
}
