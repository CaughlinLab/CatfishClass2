#lecture 2 example code
#necessary functions:



r2<-function(y_hat,y,logo=F) {
  
  RSS<-sum((((y_hat))-(y))^2)
  
  TSS<-sum(((y)-(mean(y)))^2)
  
  
  return(1-RSS/TSS)}



rmse=function(y_hat,y)
{
  sqrt(mean((y-y_hat)^2,na.rm=T))
}




##EXAMPLE OF CURVE
#y is a vector
y=c(5.69, 3.38, 4.76, 7.59, 5.47, 4.56, 3.49, 5.91, 7.43, 5.83)

#x is a vector
x=c(0.51, 0.32, 0.38, 0.7, 0.35, 0.43, 0.33, 0.57, 0.66, 0.41)

plot(y~x)

curve(1+10*x,col="purple",lwd=2,add=T)

##
#estimate parameters with least squares regression
model1<-lm(y~x)

#get parameters out
intercept<-coef(model1)[1]

slope<-coef(model1)[2]

sigma<-summary(model1)$sigma


#predict a new value of y based on x:
x_new=2

y_new=intercept+slope*2

print(y_new)

#generate predicted values for observed data:
y_hat<-intercept+slope*x


#calculate R2 and RMSE

r2(y_hat,y)

rmse(y_hat,y)







