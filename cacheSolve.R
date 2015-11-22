## cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above
##      If the inverse has already been calculated (and the matrix has not changed)
##      then the cachesolve retrieves the inverse from the cache

## Usage: mcm <- makeCacheMatrix(matrix(c(1:4), nrow=2))
##        cacheSolve(mcm)

cacheSolve <- function(x, ...) {
     ## determine if the inverse of the matrix is in cache by calling the function from makeCachematrix
     s <- x$getSolve()
     ## if there is a value in cache, return it and do no other work
     if(!is.null(s)) {
          message("getting cached data")
          return(s)
     }
     ## else the inverse was not in cache and it must be caluculated
     data <- x$get()                ## get the matrix
     s <- solve(data, ...)          ## get the inverse of the matrix
     x$setSolve(s)                  ## store the inverse matrix in cache
     s                              ## return the inverse matrix
}