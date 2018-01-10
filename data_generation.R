
stus=c("Barber Alvarez-Buylla_Cristina", "Callery_Kathleen", "Clark_Matthew", 
       "Davis_Caitlin", "Dickson_Ariana", "Easter_Tara", "Enterkine_Joshua", 
       "Graham_Jake", "Henderson_Michael", "Markham_Kate", 
       "McCaslin_Hanna", "Merriman_Chelsea", "Mertens_Karl", "Robb_Brecken", 
       "Sage_Abby", "Scott_Teague", "Uhlmann_Zach", "Van Der Weide_Thomas", 
       "Winiarski_Jason", "Wysocki_Skyler", "Zaiats_Andrii")


for(i in 1:length(stus)) {
  dir.create(stus[i])
  
}

samplesize<-100
waterquality<-runif(samplesize)

slope=5
intercept=20
sigma_seq=rep(c(0.2,2,7),times=7)




for(i in 1:length(stus)) {
  
  catfish_weight<-rnorm(samplesize,mean=intercept+slope*waterquality,sd=sigma_seq[i])
  
  catfish_weight<-ifelse(catfish_weight<0,0,catfish_weight)
  
  cat_dat<-data.frame(catfish_weight,waterquality)
  
  write.csv(cat_dat,row.names=F,file=paste("catdat",i,".csv",sep=""))
  
}

plot(rnorm(samplesize,mean=intercept+slope*waterquality,sd=0.2)~waterquality)


plot(rnorm(samplesize,mean=intercept+slope*waterquality,sd=7)~waterquality)


