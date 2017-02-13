## Write the following functions:

##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed),
##then the cachesolve should retrieve the inverse from the cache.

##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


rm(list = ls())  ## clear the work environment


makeCacheMatrix <- function(x = matrix()) {  #declare a function of matrix x called makeCacheMatrix
  
  m <- NULL  # set m to NULL
  set <- function(y) {  # declare a function of y called set
    x <<- y  # map y onto x
    m <<- NULL # set m to NULL
  }
  get <- function() x  # declare a function of x called get
  setinverse <- function(x) m <<- solve
  getinverse <- function(x,m)
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
  
}


##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- tapply(x,solve)
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- tapply(x, solve)
  
  #tapply(x, setinverse)
  
  #m
  
}

matrixxx <- matrix(1:9,3,3)

