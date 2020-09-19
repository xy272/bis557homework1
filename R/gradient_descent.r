#'@title Calculate the gradient descent
#'@description Use the gradient descent method to calculate the ordinary least square.
#'@export
gradientR<-function(Y, X, eta, iters){
  epsilon=0.00000001
  set.seed(0)
  N = dim(X)[1]
  theta.init = as.matrix(rnorm(n=dim(X)[2], mean=0,sd = 1))
  theta.init = t(theta.init)
  e = t(Y) - theta.init%*%t(X)
  grad.init = -(2/N)%*%(e)%*%X
  theta = theta.init - eta*(1/N)*grad.init
  l2loss = c()
  for(i in 1:iters){
    l2loss = c(l2loss,sqrt(sum((t(Y) - theta%*%t(X))^2)))
    e = t(Y) - theta%*%t(X)
    grad = -(2/N)%*%e%*%X
    theta = theta - eta*(2/N)*grad
    if(sqrt(sum(grad^2)) <= epsilon){
      comments = c("no","yes","NA")
      for (l in 1:length(comments)) {
        #if (!is.na(comments[l])) print(comments[l])
        if (comments[l] != "NA") print(comments[l])
      }
      break
      }
  }
  values<-list("coefficients" = t(theta),"cost"=t(l2loss))
  return(values)
}
