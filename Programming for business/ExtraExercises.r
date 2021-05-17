# Paula Esparza Vald<c3><a9>s 100418689 Fco. Javier Hern<c3><a1>ndez Ares
# 100453593

# Exercise Number 1
ex1 <- function() {
  A = matrix(data = 1:9, ncol = 2, nrow = 2, byrow = TRUE)
  B = matrix(data = 1:9, ncol = 2, nrow = 2, byrow = TRUE)
  print(A)
  for (i in 1:nrow(A)) {
    for (j in 1:ncol(A)) {
      B[j, i] = A[i, j]
    }
  }
  print(B)
  A + B
}

# Exercise Number 2
ex2<-function(){
  A=matrix(c(1,3,2,4),ncol=2,nrow=2)
  B=matrix(c(1,2,3,4),ncol=2,nrow=2)
  print(A)
  print(B)
  C=find(A==B)
}

# Exercise Number 6
ex6<-function(){
  A=c(1,2,4,8)
  B=c(2,4)
  print(A)
  print(B)
  difference=length(A)-length(B)
  cat("difference:", difference, "\n")
  if(difference==0){
    max=length(A)
  }
  else if(difference>0){
    for(i in 1:difference){
        B=c(0,B)
    }
  }
  else {
    difference=difference (-1)
    for(i in 1:difference){
      A=c(0,A)
    }
  }
  max=length(A)
  print(A)
  print(B)
  M=matrix(0,ncol=(max+1),nrow=3)
  print(M)
  for(i in length(A): 1){
    M[1,i+1]=A[i]
  }
  for(j in length(B):1){
    M[2,j+1]=B[j]
  }
  print(M)
  rest=0
  for(z in ncol(M):1){
    value=M[1,z]+M[2,z]+rest
    if(value>10){
      M[3,z]=value%%10
      rest=1
    }
    else {
      M[3,z]=value%%10
      rest=0
    }
  }
  print(M)
  if(M[3,1]==0){
    M=M[,-1]
    print(M)
  }
}

# Exercise Number 10
ex10 <- function() {
  A = c(1, 2, 4, 8)
  B = c(2, 4)
  print(A)
  print(B)
  difference = length(A) - length(B)
  cat("difference:", difference, "\n")
  if (difference == 0) {
    max = length(A)
  }
  else if (difference > 0) {
    for (i in 1:difference) {
      B = c(0, B)
    }
  }
  else {
    difference = difference(-1)
    for (i in 1:difference) {
      A = c(0, A)
    }
  }
  max = length(A)
  print(A)
  print(B)
  M = matrix(0, ncol = (max + 1), nrow = 3)
  print(M)
  for (i in length(A):1) {
    M[1, i + 1] = A[i]
  }
  for (j in length(B):1) {
    M[2, j + 1] = B[j]
  }
  print(M)
  rest = 0
  for (z in ncol(M):1) {
    value = M[1, z] + M[2, z] + rest
    if (value > 10) {
      M[3, z] = value%%10
      rest = 1
    }
    else {
      M[3, z] = value%%10
      rest = 0
    }
  }
  print(M)
  if (M[3, 1] == 0) {
    M = M[, -1]
    print(M)
  }
}

# Exercise Number 13
magicsquare<- function(){
  matrix(c(4,9,2,3,5,7,8,1,6),ncol=3,nrow=3)
  if (ncol(test) == nrow(test)){
    if (length(unique(test))==length(test) && all(test>0)){
      diag_sum <- sum(diag(test))
      antidiag_sum <- sum(diag(test[,ncol(test):1]))
      row_sum <- rowSums(test)
      col_sum <- colSums(test)
      if (all(row_sum == col_sum) && col_sum[1] == diag_sum && diag_sum == antidiag_sum){
        return (TRUE)
      }
      else {
        return(FALSE)
      }
    }
    else {
      return(FALSE)
    }
  }
  else {
    return(FALSE)
  }
}
