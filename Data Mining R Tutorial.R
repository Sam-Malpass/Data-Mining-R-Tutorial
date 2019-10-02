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



