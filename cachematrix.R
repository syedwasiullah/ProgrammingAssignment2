## This file contains solution to programming assignment2
## function will do

## This function wiell do cache

makeCacheMatrix <- function(x = matrix()){
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL}
get <- function() x{
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}
}


## Write a short comment describing this function
This function will give inverse of a matix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
        }
data <- x$get()
inv <- solve(data)
x$setinverse(inv)
inv
}
