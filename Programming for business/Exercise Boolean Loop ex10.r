ex10=function(){
  A=c(1,2,4,8)
  B=c(9,2,4)

  print(A)
  print(B)
  diferencia=length(A)-length(B)
  cat("diferencia: ", diferencia, "\n")
  if (diferencia==0){
    max=length(A)
  }
  else if (diferencia>0){
    for (i in 1:diferencia){
      B=c(0,B)
    }
  }
  else {
    diferencia=diferencia*(-1)
    for (i in 1:diferencia){
      A=c(0,A)
    }
  }
  max=length(A)
  print(A)
  print(B)

  M=matrix(0, ncol=(max+1), nrow=3)
  print(M)

  for (i in length(A):1){
    M[1,i+1]=A[i]
  }
  for (j in length(B):1){
    M[2,j+1]=B[j]
  }
  print(M)

  resto=0
  for(z in ncol(M):1){
    valor=M[1,z]+M[2,z]+resto
    if(valor>10){
      M[3,z]=valor%%10
      resto=1
    }
    else {
      M[3,z]=valor%%10
      resto=0
    }
  }
  print(M)
  if (M[3,1]==0){
    M=M[,-1]
  }
  print(M)
}

ex10()
