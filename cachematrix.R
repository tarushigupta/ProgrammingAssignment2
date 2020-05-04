## Put comments here that give an overall description of what your
## functions do
## In this file you will find two functions using which you cache the inverse of a matrix

## Write a short comment describing this function
## This function will create a special cache matrix object that can cache its inverse in the variable i 
makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x<<- y
		i <- NULL
	}
	get <- function() x
	setinverse <- function(solve) i <- solve
	getinverse <- function() i
	list(set = set, get=get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## This function computes the inverse of the matrix returned by the function above. If the inverehas already been calculated 
## then casheSolve will retrieve the inverse from cache.
## For this assignment, we assume that every matrix supplied has an inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
	if(!is.null(i)){
		message("getting inverse of matrix")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinverse(i)
	i
}
