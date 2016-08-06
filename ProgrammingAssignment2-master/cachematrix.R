## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## make the special matrix similar to amking a special vector
	mat <- NULL
	setMatrix <- function(y){
		x <<- y
		mat <<- NULL
	}
	getmatrix <- function() x
	setinverse <- function(inverse) mat <<- inverse
	getinverse <- function() mat
	list(setMatrix = setMatrix, getmatrix = getmatrix, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
## This function takes a matrix and solves the inverse using the determinant function programmed in R
cacheSolve <- function(x, ...) {
  ##Take the inverse of the matrix
  ## check if there is already a inverse
  m <- x$getinverse()
  if(!is.null(mat)){
  	message("getting cached data")
  	return(mat)
  }
  ##else we calcualte the mean
  newData <- x%getmatrix()
  m <- solve(newData,...)
  x%setMatrix(m)
  m
  ## Return a matrix that is the inverse of 'x'
}
