#Francisco Javier Hernández Ares
#DNI: 51488632G
#NIA: 100453593

#Fuensanta, he intentado utilizar los operadores & y | pero por alguna razón me daba error, así que he usado un condicional dentro de otro.
#Sé que habría que seguir preguntando hasta que se introdujese un número que estuviese dentro del rango del vector, pero al no poder usar  & y |, no he podido.

Problem1<-function(){
  Vector=c(2,4,6,3,5)
  print("Please, input a number")
  NumberInput=scan(,,1)
  if (NumberInput>min(Vector)){
    if (NumberInput<max(Vector)){
      print("The number is inside the range of the vector")
    }
    else {
      print("The number is not inside the range of the vector")
    }
  }
  else {
    print("The number is not inside the range of the vector")
  }
  if ((NumberInput%%2)==0){
    Suma=Vector[2]+Vector[4]
    print(Suma)
  }
  else {
    Suma=Vector[1]+Vector[3]+Vector[5]
    print(Suma)
  }
}

SheetMusic<-function(){
  Composer=c(1,2,3,4)
  names(Composer)=c("Bach","Albeniz","Tchaikovsky","Debussy")
  Play=c(1,2,2,4,3)
  names(Play)=c("Oratorio de Navidad","Granada","Capricho Catalán","Petit Negre","Bella Durmiente")
  NewComposer=c(5)
  names(NewComposer)=c("Mozart")
  Composer=c(Composer,NewComposer)
  print(names(Play[c(2,3)]))
  Composer=Composer[-2]
  Play=Play[-c(2,3)]
}

Problem2<-function(){
  SheetMusic()
}

Problem1()
Problem2()
