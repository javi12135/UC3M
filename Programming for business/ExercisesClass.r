#Paula Esparza Valdés 100418689
#Fco. Javier Hernández Ares 100453593

#Exercises Exercise-Base 1
ExerciseBase1<-function(){
  A=c(2,4,3,5,7,6)
  print(A[2])
  X=A[2]
  Y=A[4]
  P=c(A[2],A[5])
  print(rev(A))
  D=5
  A[2]=D
  A=c(A,D)
}

#Exercises Exercise-Base 2
ExerciseBase2<-function(){
  A=c(2,4,3,5,7,6)
  B=c(6,4,2,3,5,3)
  F=c(A,B)
  D=c(B,A)
  F[length(F)]=max(A)
  F[1]=min(A)
  F=F[-c(3,5)]
  print(F)
}

#Exercises Exercise-Base-Loop 1
ExerciseBaseLoop1<-function(){
  A=c(2,1,4,3,5)
  for (i in A){
    print(i)
  }
  pos=1
  while (pos<=length(A)){
    print(A[pos])
    pos=pos+1
  }
  pos=1
  repeat {
    print(A[pos])
    pos=pos+1
    if (pos>length(A)){
      break
    }
  }
}

#Exercises Exercise-Base-Loop 2
ExerciseBaseLoop2<-function(){
  A=c(2,1,4,3,5)
  i=0
  while (i<length(A)){
    pos=length(A)-i
    print(A[pos])
    i=i+1
  }
}

#Exercises Exercise-Base-Loop 3
ExerciseBaseLoop3<-function(){
  A=c(2,1,4,3,5,2,4,3,1,4,2,2,3)
  inputnumber=readline(prompt="Please, insert a number: ")
  count=0
  for (i in A){
    if (inputnumber==i){
      count=count+1
    }
  }
  cat("Your number appears in the vector", count, "times")
}

#Exercises Exercise-Base-Loop 4
ExerciseBaseLoop4<-function(){
  A=c(2,1,4,3,5)
  inputnumber=readline(prompt="Please, insert a number: ")
  for (i in 1:length(A)){
    if (inputnumber==A[i]){
      A[i]="*"
    }
  }
  print(A)
}

#Exercises Exercises-Vectors 1
ExercisesVectors1<-function(){
  A=c(2,4,5,7)
  Res=c(A[1])
  for (i in 2:length(A)){
    Res=c(Res,A[i]+A[i-1])
  }
  print(A)
  print(Res)
}

#Exercises Exercises-Vectors 2
ExercisesVectors2<-function(){
  A=c(2,4,5,7)
  Res=c(1:length(A))
  for (i in 1:length(A)-1){
    Res[i]=A[i]+A[i+1]
  }
  Res[length(A)]=A[length(A)]
  print(A)
  print(Res)
}

#Exercises Exercises-Vectors 3
ExercisesVectors3<-function(){
  A=c(2,4,5,7)
  Even=c()
  Odd=c()
  for (i in A){
    if ((i%%2)==0){
      Even=c(Even,i)
    }
    else {
      Odd=c(Odd,i)
    }
  }
  print(A)
  print(Even)
  print(Odd)
}

#Exercises Exercises-Vectors 4
ExercisesVectors4<-function(){
  inputgrade=1000
  repeat {
    inputgrade=readline(prompt="Please, insert a grade: ")
    inputgrade=as.numeric(inputgrade)
    if ((inputgrade>=0)&(inputgrade<=10)){
      break
    }
  }
  if (inputgrade<5){
    print("fail")
  }
  else {
    print("pass")
  }
}

#Exercises Exercises-Vectors 5
ExercisesVectors5<-function(){
  inputgrade=1000
  repeat {
    inputgrade=readline(prompt="Please, insert a grade: ")
    inputgrade=as.numeric(inputgrade)
    if ((inputgrade>=0)&(inputgrade<=10)){
      break
    }
  }
  if (inputgrade<5){
    print("fail")
  }
  else if (inputgrade<7){
    print("pass")
  }
  else if (inputgrade<9){
    print("good")
  }
  else {
    print("with honors")
  }
}

#Exercises Exercises-Vectors 6
ExercisesVectors6<-function(){
  grades=c()
  countgrades=0
  while (countgrades!=5){
    repeat {
      inputgrade=readline(prompt="Please, insert a grade: ")
      inputgrade=as.numeric(inputgrade)
      if ((inputgrade>=0)&(inputgrade<=10)){
        grades=c(grades,inputgrade)
        countgrades=countgrades+1
        break
      }
    }
  }
  for (i in 1:length(grades)){
    if (grades[i]<5){
      grades[i]="fail"
    }
    else {
      grades[i]="pass"
    }
  }
  print(grades)
}
