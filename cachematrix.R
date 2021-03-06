## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x<<-y
    i<<-0
  }
  get <- function(){
    x
  }
  setinverse <- function(inv){
    i<<- inv
  }
  getinverse <- function() {
    i
  }
  list(set=set , get=get , setinverse - setinverse , getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
  i <- x$getinverse()
  if(!is.null(i)){
    return (i)
  }
  i <- solve(x$get())
  x$setinverse(i)
  i
}
