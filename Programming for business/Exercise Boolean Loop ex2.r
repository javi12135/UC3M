ex2=function(){
  A=c(1,2,3,6,5,4,4,6)
  print(A)
  i=1
  finish=FALSE
  while ((i<=length(A)) & (finish==FALSE)){
    j=i+1
    while (j<=length(A)){
      if (A[i]==A[j]){
        finish=TRUE
        }
      j=j+1
      }
    if (finish==FALSE){
      print(A[i])
    }
    i=i+1
  }
}

ex2()
