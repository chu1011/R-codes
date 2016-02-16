## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#test
a1 <- matrix(c(1,3,4,5,6,7,8,9,10), 3, 3)
det(a1)
a1
a2 <- matrix(c(1,2,3,4,5,6,7,8,9), 3, 3)
det(a2)
a2
a3 <- matrix(c(1,9,3,8,2,2,6,-6,4,4,2,5,8,8,4,0), 4, 4)
det(a3)
a3

b <- solve(a1)
b
c <- a1 %*% b
round(c, digits =0)

n <- det(a2)
if (!n == 0){solve(a2)}else{message("unsolvable")}


#create a special "matrix" containing functions 
  ## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
    cat("x =", x, "\n")
  m <- NULL
    cat("m =", m, "\n")
  set <- function(y) {
          x <<- y
          m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

#calc the inverse of the special "matrix"
  ## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
              message("getting cached data") 
              return(m)
        }
        data <- x$get()
        m <- solve(data, ...) 
        x$setsolve(m)
        m
}

#Run_a1 del(a1) != 0
ma <- makeCacheMatrix(a1)
ma$get()
ma$getsolve()
cacheSolve(ma)
ma$getsolve()
cacheSolve(ma)

#Run_a2 del(a1) = 0
ma <- makeCacheMatrix(a2)
ma$get()
ma$getsolve()
cacheSolve(ma)  #Error exactly singular matrix
ma$getsolve()
cacheSolve(ma)

#Run_a3 del(a1) != 0
ma <- makeCacheMatrix(a3)
ma$get()
ma$getsolve()
cacheSolve(ma)
ma$getsolve()
cacheSolve(ma)


###backup
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data") 
    return(m)
  }
  else if(data <- x$get() n <- det(data) !n == 0) {
    m <- solve(data, ...) x$setsolve(m) m
  }
  else{m <- c("unsolvable") m}
}