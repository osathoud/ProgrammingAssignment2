makeCacheMatrix <- function(x=matrix()) {
  
  m=NULL
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

