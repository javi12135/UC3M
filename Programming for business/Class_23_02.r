#Exercise 1
A<-c(2,4,3,5,7,6)
print(A[2])
X<-A[2]
Y<-A[4]
P<-A[c(2,5)]
D<-5
A[2]<-D
A<-c(A,D)

#Exercise 2
A<-c(2,4,3,5,7,6)
B<-c(6,4,2,3,5,3)
F<-c(A,B)
D<-c(B,A)
F[length(F)]<-max(A)
F[1]<-min(A)
F<-F[-c(3,5)]
F<-F[-length(F)]
print(F)
