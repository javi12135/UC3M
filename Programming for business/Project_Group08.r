#Paula Esparza Valdés 100418689
#Fco. Javier Hernández Ares 100453593
#Goose spaces: Go to next goose and re-roll. 1,5,9,14,18,23,27,32,36,41,45,50,54,59,63
#Bridge: Go to the other bridge and re-roll. 6,12
#Dices: Go to the other dices and re-roll. 26,53
#Inn: You miss 2 turns. 19
#Jail: You miss 3 turns. 56
#Well: You miss 4 turns. 31
#Mace: Go back to space 30. 42
#Death: Restart. 58

Menu<-function(){
  print("Welcome to the Game of the Goose")
  MenuChoice()
}

MenuChoice<-function(){
  print("What do you want to do?")
  print("1.Choose the name of the players and play")
  print("2.Play the Game of the Goose")
  print("3.Record the players' names and games won")
  print("4.Quit the game")
  choice<<-scan(,,1)
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
  else {
    MenuChoice()
  }
}

Play<-function(){
  Tablero<<-c(1:63)
  #Tablero[1,5,9,14,18,23,27,32,36,41,45,50,54,59,63]<<-"Goose" Hay que hacerlo de uno en uno
  Option1()
  Option2()
}

Option1<-function(){ #Since there is only one player, it asks Player 1 for their name
  Player_1<<-readline(prompt="Please, insert the name of player 1 ")
  YN1<<-"Yes"
  Place1<<-0
  print("Let's play!")
  print("You can quit the game at any time by pressing 4")
}

Option2<-function(){ #Goes through each player's turn
  if (YN1=="Yes"){
    RollP1()
  }
  else if (YN1=="No"){
    MenuChoice()
  }
}

RollP1<-function(){ #Asks if P1 wants to roll the dice
  YN1<<-readline(prompt="Please, player 1, it's your turn, do you want to roll the dice (Yes/No)")
  if (YN1=="Yes"){
    Dice1()
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
  dice<<-sample(1:6, 1)
  print(dice)
  Place1<<-Place1+dice
  print(Place1)

}



Option3<-function(){ #Records the players' names and games won in .txt file
  #Save game in .txt file
  print("Winner will be recorded in .txt file")
  MenuChoice()
}

EndGame<-function(){ #Quits the game
  print("The current game has ended")
  quit()
}

Game<-function(){
  Menu()
}

Game()
