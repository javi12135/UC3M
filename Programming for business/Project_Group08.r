#Paula Esparza Valdés 100418689
#Fco. Javier Hernández Ares 100453593
#sample(1:6, 1)

Menu<-function(){
  print("Welcome to the Game of the Goose")
  MenuChoice()
}

MenuChoice<-function(){
  print("What do you want to do?")
  print("1.Choose the name of the players and play")
  print("2.Play the Game of the Goose")
  print("3.Record the player names and games won")
  print("4.Quit the game")
  choice=scan(,,1)
  if (choice==1){
    Play()
  }
  if (choice==2){
    Play()
  }
  if (choice==3){
    Option3()
  }
  if (choice==4){
    EndGame()
  }
}

Play<-function(){
  Option1()
  Option2()
}

Option1<-function(){ #Asks number of players and names each player
  Player_1=readline(prompt="Please, insert the name of player 1 ")
  YN1="Yes"
}

Option2<-function(){ #Goes through each player's turn
  print("Let's play!")
  print("You can quit the game at any time by pressing 4")
  if (YN1=="Yes"){
    RollP1()
  }
}

RollP1<-function(){ #Asks if P1 wants to roll the dice
  YN1=readline(prompt="Please, player 1, it's your turn, do you want to roll the dice (Yes/No)")
  if (YN1=="Yes"){
    print("lol")
  }
  else if (YN1=="No"){
    Option2()
  }
  else if (YN1=="4"){
    EndGame()
  }
  else {
    RollP1()
  }
}

Dice1<-function(){ #Rolls P1's dice
  dice<-sample(1:6, 1)
  Place1=Place1+dice
}

EndGame<-function(){ #Quits the game
  print("The current game has ended")
  quit()
}

Game<-function(){
  Menu()
}

Game()
