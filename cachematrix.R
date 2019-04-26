##The following function "makeCacheMatrix" creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {  m=NULL
  set <- function(y){
    x<<-y
    i<<-NULL
  }
  get <-function() x
  setinverse<-function(inverse) m<<-inverse 
  getinverse<<-function()m
  
  list (set = get, 
        get = get, 
        setinverse = setinverse,
        getinverse = getinverse)

}

## The cacheSolve function computes the inverse of the "matrix" returned by "makeCacheMatrix" above.

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
