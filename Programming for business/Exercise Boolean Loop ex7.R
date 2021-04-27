countNumMatriz=function() {
  A=matrix(c(1,3,3,4),2,2)
  B=matrix(c(0,0),1,2)
  v=c(0)
  for (i in 1:nrow(A)){
    for (j in 1:ncol(A)){
      num=A[i,j]
      #Part 1 (checking if an element has already been counted)
      w=1
      continue=TRUE
      while ((w<=length(v)) & (continue==TRUE)){
        if (num==v[w]){
          continue=FALSE
        }
        w=w+1
      }
      #Part 2 (Counting the element)
      if (continue==TRUE){
        v=c(v,num)
        count=0
        for (k in 1:nrow(A)){
          for (z in 1:ncol(A)){
            if (A[k,z]==num){
              count=count+1
            }
          }
        }
        #Part 3
        if ((i==1) & (j==1)){
          B[1,1]=num
          B[1,2]=count
        }
        else {
          B=rbind(B,c(num,count))
        }
      }
    }
  }
  print(A)
  print(B)
}

countNumMatriz()
