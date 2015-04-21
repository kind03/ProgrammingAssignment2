## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## reverse the matrix
	inverse = NULL
	setma = function(yy) {
		x <<- yy
		inverse <<- NULL
		}
	getma <- function() x	
	setin <- function(y) {inverse <<- y}
	getin = function() {inverse}
	return(list(setma = setma, getma = getma,
                setin = setin,getin = getin))
}
mc = makeCacheMatrix()


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		## retrieve the variable ma
		inv = x$getin()
		if(!is.null(inv))
		{
			message("getting cached data")
			return(inv)
		}
		else
		{
			data = x$getma()
			inv = solve(data)
			x$setin(inv)
			return(inv)
		}
}
