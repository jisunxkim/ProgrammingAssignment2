## Put comments here that give an overall description of what your
## functions do

## Create a list of four functions

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
 
        set <- function (y) {
                x <<-y
                inv <<- NULL
        }
        
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
        
}


## Check if a inverse of the data exists. If yes, read the saved result from the instance of make CacheMatrix, if not canaculate one. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message ("getting cached data")
                return(inv)
        }
        
        message("no previous cal exisits, so calculating new")
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}


