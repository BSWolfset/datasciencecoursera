## makeCachMatric takes in a matrix to create a special "matrix" that is a list containing a function to
##     set the value of the matrix
##     get the value of the matrix
##     set the value of the inverse matrix
##     get the value of the inverse matrix

## Usage: mcm <- makeCacheMatrix(matrix(c(1:4), nrow=2))
##        cacheSolve(mcm)

makeCacheMatrix<- function(x = matrix()) {
     s <- NULL
     ## set the value of the matrix
     set <- function(y) {
          x <<- y
          s <<- NULL
     }
     get <- function() x          ## get the value of the matrix
     setSolve <- function(solve) s <<- solve          ## set the inverse matrix
     getSolve <- function() s          ## get the inverse matrix
     ## return the list
     list(set = set, get = get,
          setSolve = setSolve,
          getSolve = getSolve)
}
