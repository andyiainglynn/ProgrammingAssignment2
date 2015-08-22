## This pair of fucntions can create a matrix, calculate its inverse and store the inverse in a cache which
## can be retrived if needed

## makeCacheMatrix is a function to create a matrix object which can cache its own inverse

makeCacheMatrix <- function(x = matrix()) {
  
  cs <- NULL
  
  cre <- function(z) {
    
    matrix(1:4, nrow = 2)
    
  }
  
  sol <- function(solve) cs <<- solve
  
}



## cacheSolve is a function that will compute the inverse of a matrix unless 
## that calculation has already been done and the result cached, in this case
## the function retireves the cached result

cacheSolve <- function(x, ...) {
  
  
  
  
  cs <- x$makeCacheMatrix()
  
  if(!is.null(cs)) {
    
    message("getting cached data")
    
    return(cs)
    
  }
  
  data <- x$get()
  
  cs <- solve(data, ...)
  
  ##x$setmean(cs)
  
  cs
  
}
