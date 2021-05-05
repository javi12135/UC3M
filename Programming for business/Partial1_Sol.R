ex1<-function()
{
  A=c(2,3,5,4,3)
  suma_odd=0
  suma_even=0
  num=scan(,,1)
  while((num<min(A))| (num>max(A)))
    num=scan(,,1)
  print(num)
  if(num%%2==1)
  {
    i=1
    while (i<=length(A))
    {
      suma_odd=suma_odd+A[i]
      i=i+2
    }
  }
  else
  {
    i=2
    while (i<=length(A))
    {
      suma_even=suma_even+A[i]
      i=i+2
    } 
  }
  print(A)
  cat("odd sum:", suma_odd, "\n")
  cat("even sum:", suma_even, "\n")
}

exercise2<-function()
{
  print("Section A")
  
  composer<-c(1,'BACH',2,'Albeniz',3,'Tchaikovsky',4,'Debussy')
  play<-c(1,'Oratorio de Navidad',2,'Granada',2,'Capricho Catalán',4,'Petit Negre',3,'Bella Durmiente')
  print(composer)
  print(play)
  newID=as.numeric(composer[length(composer)-1])+1
  composer=c(composer,newID,'Mozart')
  print(composer)
  print("**************")
  
  #************************
  print("Section B")
  data=c()
  for(i in 1:length(play))
  {
    if(play[i]==2)
      data=c(data,play[i+1])
  }
  print("Composer 2:")
  print(data)
  print("**************")
  
  print("Section C")
  
  i=1
  while(i<=length(play))
  {
    if(play[i]==2)
      play=play[-c(i, i+1)]
    else
      i=i+2
  }
  print("vector play")
  print(play)
  
  i=1
  while(i<=length(composer))
  {
    if(composer[i]=="2")
      composer=composer[-c(i, i+1)]
    else
      i=i+2
  }
  print("vector composer")
  print(composer)
  
}