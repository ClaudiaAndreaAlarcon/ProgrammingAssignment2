## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
        i<- NULL                                ## Para iniciar la inversa de la matriz
        set<- function(matrix){                 ## Para establecer la matriz
                m<<-matrix
                i<<-NULL
        }
        get<- function() {                      ## Para obtener la matriz
                m
        }
        setInverse<- function(inverse) {        ## Para establecer la inversa
                i<<- inverse 
        }
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getinverse()
        if (!is.null(m)) {
                message("Obteniendo datos del cache")
                return(m)
        }
        data<- x$get()
        m<- solve(data)%*% data
        x$setInverse(m)
        m
}
