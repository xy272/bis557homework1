context("Testing gradient descent")
test_that("You gradient decent() function works is an easy case.",{

  set.seed(0)
  x<-matrix(rnorm(400), ncol = 4)
  y<-rnorm(100)

  zgd<-gradientR(y,x,2,1000000)
  zsv<-solve(t(x)%*%x,t(x)%*%y)

  expect_equivalent(zgd$coefficients, zsv, tolerance = 1e-1)
})
