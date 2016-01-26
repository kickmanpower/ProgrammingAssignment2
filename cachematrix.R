## ideally this function should use cach to storge matrix and setup 

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
        x<<-y
        m<<-NULL
    }
    get<-function() x
    setsolve<-function(solve) m<<-solve
    getsolve<-function() m
    list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getsolve()
        if(is.null(m)){
            message("getting cached data")
            return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setmean(m)
        m
}
