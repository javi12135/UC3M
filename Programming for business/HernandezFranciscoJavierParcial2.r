Patients<-function(){
  Table1=matrix(c(1.65,1.74,1.70,1.55,1.75,1.58,65,80,77,60,66,65),nrow=6)
  dimnames(Table1)=list(c("Ana","Pepe","Nacho","Bea","Gema","Alba"),c("Height","Weight"))
  print(Table1)
  Table2=cbind(Table1,c("W","M","M","W","W","W"),c(23,43,34,43,45,54))
  dimnames(Table2)=list(c("Ana","Pepe","Nacho","Bea","Gema","Alba"),c("Height","Weight","Gender","Age"))
  print(Table2)
  BMI=c(as.numeric(Table2[1,2])/as.numeric(Table2[1,1])**2,as.numeric(Table2[2,2])/as.numeric(Table2[2,1])**2,as.numeric(Table2[3,2])/as.numeric(Table2[3,1])**2,as.numeric(Table2[4,2])/as.numeric(Table2[4,1])**2,as.numeric(Table2[5,2])/as.numeric(Table2[5,1])**2,as.numeric(Table2[6,2])/as.numeric(Table2[6,1])**2)
  Table3=cbind(Table2,c(BMI))
  dimnames(Table2)=list(c("Ana","Pepe","Nacho","Bea","Gema","Alba"),c("Height","Weight","Gender","Age","BMI"))
  print(Table3)
}

Bingo<-function(){
  Cardboard<-matrix(c(3,1,5,7,6,5,11,17,8,2,14,18,15,4,7,11,19,6,17,6,2,7,3,14),nrow=4,ncol=6,)
  print(Cardboard)
  cantarbingo=FALSE
  while (cantarbingo==FALSE){
    cantado=sample(1:20, 1)
    print("Number:")
    print(cantado)
    hayunnocero=TRUE
    for (i in 1:nrow(Cardboard)){
      for (j in 1:ncol(Cardboard)){
        if (cantado==Cardboard[i,j]){
          Cardboard[i,j]=0
          print(Cardboard)
          if ((Cardboard[i,1]==0)&(Cardboard[i,2]==0)&(Cardboard[i,3]==0)&(Cardboard[i,4]==0)&(Cardboard[i,5]==0)&(Cardboard[i,6]==0)){
            hayunnocero=FALSE
            print("Line!")
            print(i)
          }
          if ((Cardboard[1,j]==0)&(Cardboard[2,j]==0)&(Cardboard[3,j]==0)&(Cardboard[4,j]==0)){
            hayunnocero=FALSE
            print("Column!")
            print(j)
          }
        }
      }
    }
    terminado=FALSE
    while ((hayunnocero==FALSE)&(terminado==FALSE)){
      for (i in 1:nrow(Cardboard)){
        for (j in 1:ncol(Cardboard)){
          if (Cardboard[i,j]!=0){
            hayunnocero=TRUE
          }
        }
      }
      terminado=TRUE
    }
    if (hayunnocero==FALSE){
      print("BINGO!")
      cantarbingo=TRUE
    }
  }
}
