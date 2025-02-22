## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
      i <- NULL
      
      set <- function(matrix) {
        x <<- matrix
        i <<- NULL
      }
      
      get <- function() {
        x
      }
      
      setinverse <- function(inverse) {
        i <<- inverse
      }
      
      getinverse <- function() {
        i
      }
      
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    
    if( !is.null(m) ) {
      message("getting cached data")
      return(m)
    }
    
    data <- x$get()
    
    m <- solve(data) %*% data
    
    x$setInverse(m)
    
    m
}
