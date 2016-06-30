## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<- function (x=matrix())  #intitiate argument 
  { 
  inv <- NULL                   
  set <- function(y){       # function to get the matrix data
    x<<- y                  #x is set to y, which is the argumentofthe set func
    inv<<-NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse #set the inverse from console
  getinv <- function() inv                    #print the inverse on the console
  list(set=set,get=get,
       setinv=setinv, 
       getinv=getinv) #create a list to store all the data
}


## Write a short comment describing this function

cacheSolve <- function(x, ...){     ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinv()
  if(!is.null(inv)){            #check if inv is set  
    message('getting cached data')
  return(inv)
  }
  matrix<-x$get()                 #get matrix data from makeCacheMatrix function
    inverse<-solve(matrix)      #inverse of the matrix
    x$setinv(inv)  
    return(inverse)
}

        