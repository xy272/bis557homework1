#'@title Grab coefficients
#'@description This is a function to grab all coefficients of the linear model.
#'@param lm_obj the linear model object created by the lm() function
#'@export
linear_model<-function(fo,d, contrasts = NULL){
  d_no_na<-model.frame(fo, d)
  X<-model.matrix(fo, d_no_na, contrasts)
  y_name<-as.character(fo)[2]
  Y<-matrix(d_no_na[,y_name], ncol=1)
  beta<-gradientR(Y,X,2.65,10000000000)
  ret <- list("coefficients"=t(beta$coefficients),"cost"=t(beta$cost))
  ret
}
