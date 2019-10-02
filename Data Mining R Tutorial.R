#Exercise 1
x<-'hello'
y<-'world'
x
y
paste(x,y)
help(paste)

#Exercise 2
ls()
rm(x,y)
?rm

#Exercise 3
1+2
2^3
x=4
x

#Exercise 4
x<-c(1.1, 2.3, 3.14, 6.28, 69.96)
x
assign("y", c(1.1, 2.3, 3.14, 6.28, 69.96))
y
c(1.1, 2.3, 3.14, 6.28, 69.96)->z
z

#Exercise 5
values<-c('C','A','D','B','C','A','B','B','B','A')
factors<-factor(values)
factors
levels(factors)

#Exercise 6
myArray<-array(c(1,2,3,4,5,6), dim=c(3,2))
myArray
myVect<-c(1,2,3,4,5,6)
dim(myVect)<-c(3,2)
myVect
myArray<-array(1:8, dim=c(2,2,2))
myArray
A<-matrix(c(1,2,3,4,5,6), nrow=3, ncol=2, byrow=TRUE)
A
A[1,2]
A[1,]

#Exercise 7
Lst<-list(name="Bob", wife="Mary", no.children=3, child.ages=c(4,7,9))
Lst
Lst[[2]]
Lst$wife
Lst[["wife"]]
Lst[[4]]
Lst[[4]][2]
mylist.A<-list("Bob", 32, TRUE)
mylist.B<-list("Jack", 35, FALSE)
mylist.C<-list("Alex", 28, FALSE)
mylist.ABC<-list(mylist.A, mylist.B, mylist.C)
mylist.ABC

#Exercise 8
nums<-c(3,5,1)
str<-c("hello", "bye", "ciao")
bools<-c(TRUE, FALSE, FALSE)
df<-data.frame(nums,str,bools)
df
class(df)
class(iris)
head(iris)

#Exercise 9
myData<-read.csv("mydata.csv")
library(gdata)
myData<-read.xls("myData.xls")
phddata<-read.table("http://data.princeton.edu/wws509/datasets/phd.dat")
phddata
nums<-c(1,2,3)
strs<-c("aa","bb","cc")
bools<-c(TRUE,FALSE,TRUE)
df<-data.frame(nums, strs, bools)
write.table(df, file="C:/myRprojects/myTable.txt")

#Exercise 10
mean(x, trim=0, na.rm=FALSE)
mydata<-c(1.2,2.3,4.5,8.4)
mean(mydata)
mean(x=mydata)
mean(trim=0.0, x=mydata)
mean(na.rm=FALSE, trim=0.0, x=mydata)
mean(mydata, 0.0, FALSE)
xvals<-c(1:100)
yvals<-xvals^2
plot(xvals, yvals)
plot(x=xvals, yvals, xlab="x")
plot(xvals, yvals, xla="x axis")
paste("a","b",sep="-")
paste("a","b","c", sep="-")

#Exercise 11
x<-seq(-3, 3, .1)
y<-dnorm(x)
plot(x,y)
x<-seq(-3,3,.1)
y<-dnorm(x)
plot(x,y, type="l")
title("Normal Density Function", col.main="seagreen")
colors()
pie(rep(1,16), col=rainbow(16))
attach(mtcars)
hist(wt, main="Histogram of Wt")
barplot(table(iris$Species))
fun1<-function(x){(1-4*x-x^3/17)*sin(x^2)}
x1<-seq(-15,15,0.1)
plot(x1,fun1(x1), type="l", col="red")
fun2<-function(x){x/sqrt(1+x^2)}
x2<-seq(-5,5,0.1)
plot(x2,fun2(x2), type="l", col="blue")
plot(x1,fun1(x1), type="l", col="red")
par(new=TRUE)
plot(x2,fun2(x2), type="l", col="blue")
par(mfrow=c(1,2))
plot(x1,fun1(x1), type="l", col="red")
plot(x2,fun2(x2), type="l", col="blue")

#Exercise 12
setwd("C:\\Users\\sam\\Documents\\R Scripts\\Data Mining R Tutorial\\")
postscript("testfigure.eps", paper="special", height=4.8, width=10, horizontal=FALSE)
par(mfrow=c(1,2), mar=c(4,4,3,1))
plot(x1, fun1(x1), type="l", col="red", main="plot 1")
plot(x2, fun2(x2), type="l", col="blue", main="plot 2")
dev.off()

#Exercise 13
setwd("C:\\Users\\sam\\Documents\\R Scripts\\Data Mining R Tutorial\\")
png("testfigure.png", height=240, width=640)
par(mfrow=c(1,2), mar=c(4,4,3,1))
plot(x1, fun1(x1), type="l", col="red", main="plot 1")
plot(x2, fun2(x2), type="l", col="blue", main="plot 2")
dev.off()

#Exercise 14
.libPaths()
library()
search()
library(help="stats")
install.packages("ggplot2")
library(ggplot2)

#Exercise 15
?eurodist
eurodist
?cmdscale
euro2D<-cmdscale(eurodist, k=2, eig=T)
euro3D<-cmdscale(eurodist, k=3, eig=T)
euro4D<-cmdscale(eurodist, k=4, eig=T)
euro2D
euro3D
euro4D
max.k<-12
P.k1<-rep(0,max.k)
P.k2<-rep(0,max.k)
SStress<-rep(0,max.k)
for(kk in 1:max.k) {
  my.mds.kk<-cmdscale(eurodist, k=kk, eig=T)
  P.k1[kk]<-my.mds.kk$GOF[1]
  P.k2[kk]<-my.mds.kk$GOF[2]
  SStress[kk]<-(sum((eurodist^2 - (dist(my.mds.kk$points))^2)^2)/sum(eurodist^4))^0.5
}
cbind(1:max.k,P.k1)
cbind(1:max.k,P.k2)
P.k1
P.k2
SStress
par(pty="s")
plot(euro2D$points[,1], euro2D$points[,2], type='n', xlab="Coordinate 1", ylab="Coordinate 2", xlim=c(-2500,2500), ylim=c(-2500,2500))
text(euro2D$points[,1], euro2D$points[,2], labels=labels(eurodist))
euro.abb<-abbreviate(labels(eurodist))
plot(euro2D$points[,1], euro2D$points[,2], type='n', xlab="Coordinate 1", ylab="Coordinate 2", xlim=c(-2500,2500), ylim=c(-2500, 2500))
text(euro2D$points[,1], euro2D$points[,2], labels=euro.abb)
plot(euro2D$points[,1], euro2D$points[,2], type='n', xlab="Coordinate 1", ylab="Coordinate 2", xlim=c(-2500, 2500), ylim=c(-2500,2500))
text(euro2D$points[,1], euro2D$points[,2], labels=euro.abb)

#Exercise 16
dat<-as.matrix(iris[,-5])
pca<-prcomp(dat, retx=TRUE, center=TRUE, scale=TRUE)
pca
SPP<-iris$Species
COLOR<-c(2:4)
plot(pca$x[,1], pca$x[,2], col=COLOR[SPP], cex=1, xlab=paste0("PC1 (", round(pca$sdev[1]/sum(pca$sdev)*100, 0), "%)"), ylab=paste0("PC2 (", round(pca$sdev[2]/sum(pca$sdev)*100,0), "%)"))
legend("topright", legend=levels(iris$Species), col=COLOR, pch=1)

#Exercise 17
set.seed(123)
iris.km<-kmeans(iris[,-5],3,iter.max=100)
clusterTable<-table(iris[,5], iris.km$cluster)
clusterTable
dat<-as.matrix(iris[,-5])
pca<-prcomp(dat, retx=TRUE, center=TRUE, scale=TRUE)
CID<-iris.km$cluster
COLOR<-c(2:4)
plot(pca$x[,1], pca$x[,2], col=COLOR[CID], cex=1, xlab=paste0("PC1 (", round(pca$sdev[1]/sum(pca$sdev)*100, 0), "%)"), ylab=paste0("PC2 (", round(pca$sdev[2]/sum(pca$sdev)*100,0), "%)"))
legend("topright", legend=levels(factor(iris.km$cluster)), col=COLOR, pch=1)

#Exercise 18
idx<-sample(1:dim(iris)[1], 40)
iris.sample<-iris[idx, ]
iris.sample$Species<-NULL
hc<-hclust(dist(iris.sample), method="ave")
plot(hc, hang=-1, labels=iris$Species[idx])

#Exercise 19
install.packages("party")
library("party")
iris.ctree<-ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris)
print(iris.ctree)
plot(iris.ctree)

#Exercise 20
iris_test<-iris
predictions<-predict(iris.ctree, new_data=iris_test)
table(predictions, iris_test$Species)

#Exercise 21
install.packages("rpart")
library("rpart")
iris.dt<-rpart(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris, method="class")
summary(iris.dt)
printcp(iris.dt)
plotcp(iris.dt)
plot(iris.dt, uniform=TRUE, main="Decision Tree for the iris dataset")
text(iris.dt, use.n=TRUE, all=TRUE, cex=.8)
post(iris.dt, file="C:/Users/sam/Documents/R Scripts/Data Mining R Tutorial/iris_DT.ps", title="Decision Tree for the iris dataset")
