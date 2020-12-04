## Overall description of what my functions do:
# You will see a pair of two functions that cache the inverse of a matrix

## Short comment describing the function:
# The following is a function which creates a matrix object which can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setTheInverse <- function(inverse) i <<- inverse
  getTheInverse <- function() i
  list(set = set,
       get = get,
       setTheInverse = setTheInverse,
       getTheInverse = getTheInverse)
}



## Comment describing the second function:
# The second function computes the inverse of the previously designed matrix object
# If the inverse has already been calculated, the function will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
  i <- x$getTheInverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setTheInverse(i)
  i
}
