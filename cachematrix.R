## Put comments here that give an overall description of what your
## functions do

##Following function creates a vector of functions for matrix value setting and retrieving

makeCacheMatrix <- function(x = matrix()) {
	 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}



##This function Calculate Inverse of Matrix or return Cached Value in case it is already calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  m <- x$getinverse()
	## Check for Cached Value of Inverse of Matrix
      if(!is.null(m)) {
                	message("getting cached data")
			## IF the Cached Value is -1 then Matrix is not a Square matrix
			if(m==-1)
			{
				message("Given Matrix is not a square matrix and hence cannot calculate inverse...")
				return()
			}
			else
			{
                		return(m)
			}
      }
      data <- x$get()
	l<-dim(data)
	## Check If Matrix is Square Matrix
	if(l[1]==l[2])
	{	
      	m <- solve(data, ...)
       	x$setinverse(m)
		retrun(m)
	}
	else
	{
		## Put -1 if it is not Square
		m<--1
		message("Given Matrix is not a square matrix and hence cannot calculate inverse...")

	}
        
}
