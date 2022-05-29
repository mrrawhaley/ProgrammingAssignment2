## stores inverted matrix in cache and returns cached result for future matrix inversion

## cache matrices A and A^-1

makeCacheMatrix <- function(x = matrix()) {
  matrix_x <<- x
  inverse_x <<- solve(x)
}

## checks if matrix B = matrix A and returns A^-1 if B = A or solves B^-1

cacheSolve <- function(x = matrix()) {
        ## Return a matrix that is the inverse of 'x'
  
  if(exists("matrix_x")) {
    y <- matrix_x
    z <- inverse_x
    if(isTRUE(all.equal(x, y))) {
      print("getting cached data")
      z
    } else {
      print("no cached data; solving...")
      solve(x)
    }
  } else {
    print("no cached data; solving...")
    solve(x)
  }
}