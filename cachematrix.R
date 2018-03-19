## Put comments here that give an overall description of what your
## functions do

## This function is to create a list containing four functions: set a matrix, get a matrix, set the inverse of the matrix and get the inversese of the matrix.

makeCachematrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setsolve <- function(inverse) i <<- inverse
        getsolve <- function() i
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## This function is to create the cache of inverse of the matrix get by x
cacheSolve <- function(x, ...) {
        i <- x$getsolve()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
	else
	{data <- x$get()
        i <- solve(data, ...)
        x$setsolve(i)
        i
	}
}


