## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## make the special matrix similar to amking a special vector
	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) m <<- inverse
	getinverse <- function() m
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
## This function takes a matrix and solves the inverse using the determinant function programmed in R
cacheSolve <- function(x, ...) {
  ##Take the inverse of the matrix
  ## check if there is already a inverse
  m <- x$getinverse()
  if(!is.null(m)){
  	message("getting cached data")
  	return(m)
  }
  ##else we calcualte the mean
  else{
  ##Assign matrix elemetns to  dummy variables
  a <- x[1,1]
  b <- x[1,2]
  c <- x[2,1]
  d <- x[2,2]

  ##solve the determinet of the matrix
  det <- det(x)
  
  ##reassign the elements of the matrix
  newMatrix <- matrix(c(d,-b,-c, a),2,2)
  
  ##multiply newMatrix by inverse of det
  inverseMatrix <- (1/det)*newMatrix
  
  ##Return inversematrix
  return(inverseMatrix)
	}
  ## Return a matrix that is the inverse of 'x'
}
