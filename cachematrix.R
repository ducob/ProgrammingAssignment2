## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	
	setMatrix <- function(matrix){
		x <<- matrix
		m <<- NULL
	}

	getMatrix <- function(){
		x
	}

	cacheInverse <- function(inversedMatrix){
		m <<- inversedMatrix
	}

	getInverse <- function(){
		m
	}
	
	list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inverse <- x$getInverse()
	
	if(!is.null(inverse)){
		message("Getting cached data...")
		return(inverse)
	}
	
	data <- x$getMatrix()
	inverse <- solve(data)
	x$casheInverse(inverse)
		
		## Return a matrix that is the inverse of 'x'
		inverse
	}