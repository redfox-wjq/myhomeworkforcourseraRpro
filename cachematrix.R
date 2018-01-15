## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        Solvex<-NULL
        set <- function(y) {
                x <<- y
                Solvex <<- NULL         #set(y)£¬x=y,Solvex=NULL
        }
        get <- function() x             #Assign X to get
        setSolve <- function(Solve) Solvex<<-Solve
        getSolve<- function() Solvex    #Assign Solvex to getSolve£¨NULL£©
        list(set = set, get = get,                 
             setSolve = setSolve,
             getSolve = getSolve)       #list
}
        




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        Solvex<- x$getSolve()     #Assign getSolve to Solvex

## if Solvex was not NULL sent message
        if(!is.null(Solvex)) {
                message("getting cached data")
                return(Solvex)
        }
        
##Check whether the number of rows was equal to the columns       
##if not we need sent an massage function solve can't been used 
        checkx<- nrow(X)==ncol(X)
        rx<-dim(x)[1]
        cx<-dim(x)[2]
        messagebox<-paste("matrix rows=",rx," columns=",cx,"
                          so cann't calculat inverse ,
                          but you can calculat the 
                          Moore¨CPenrose inverse  used the
                          packages ¡°MASS¡±")
        if(checkx!=T) {
                message(messagebox)
                return(Solvex)
        }
        data <- x$get()          #Assign matrix to data
        Solvex <- Solve(data, ...)
        x$setSolve(Solvex)
        Solvex
                               
        ## Return a matrix that is the inverse of 'x'
}

