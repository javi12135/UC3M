#Paula Esparza Valdés 100418689
#Fco. Javier Hernández Ares 100453593
#Goose spaces: Go to next goose and re-roll. 1,5,9,14,18,23,27,32,36,41,45,50,54,59,63
#Goose +4:1,5,14,23,32,41,50,59
#Goose +5:9,18,27,36,45,54
#Bridge: Go to the other bridge and re-roll. 6,12
#Dices: Go to the other dices and re-roll. 26,53
#Inn: You miss 2 turns. 19
#Jail: You miss 3 turns. 56
#Well: You miss 4 turns. 31
#Maze: Go back to space 30. 42
#Death: Restart. 58

Menu<-function(){ #Shows the menu
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
    Menu()
  }
}

Play<-function(){ #Creates the board
  TableroPermanente<<-c("Goose4",2,3,4,"Goose4","Bridge",7,8,"Goose5",10,11,"Bridge",13,"Goose4",15,16,17,"Goose5","Inn",20,
  21,22,"Goose4",24,25,"Dices","Goose5",28,29,30,"Well","Goose4",33,34,35,"Goose5",37,38,39,40,
  "Goose4","Maze",43,44,"Goose5",46,47,48,49,"Goose4",51,52,"Dices","Goose5",55,"Jail",57,"Death","Goose4",60,61,62,"End")
  TableroVisible<<-c("1 Goose",2,3,4,"5 Goose","6 Bridge",7,8,"9 Goose",10,11,"12 Bridge",13,"14 Goose",15,16,17,"18 Goose","19 Inn",20,
  21,22,"23 Goose",24,25,"26 Dices","27 Goose",28,29,30,"31 Well","32 Goose",33,34,35,"36 Goose",37,38,39,40,
  "41 Goose","42 Maze",43,44,"45 Goose",46,47,48,49,"50 Goose",51,52,"53 Dices","54 Goose",55,"56 Jail",57,"58 Death","59 Goose",60,61,62,"63 End")
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
    Menu()
  }
}

RollP1<-function(){ #Asks if P1 wants to roll the dice
  YN1<<-readline(prompt="Please, player 1, it's your turn, do you want to roll the dice? (Yes/No) ")
  if ((YN1=="Yes") | (YN1=="yes") | (YN1=="Y") | (YN1=="y")){
    Dice1()
  }
  else if ((YN1=="No") | (YN1=="no") | (YN1=="N") | (YN1=="n")){
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
  Place1<<-Place1+dice
  print("You got a:")
  print(dice)
  if (Place1>63) {
    Place1=126-Place1
  }
  print("You go to square:")
  print(TableroVisible[Place1])
  #TableroVisible[Place1]<-Player_1
  #print(TableroVisible)
  Casillas1()
}

Casillas1<-function(){ #Checks if the player is in a special square
  if ((TableroPermanente[Place1]=="Goose4") | (TableroPermanente[Place1]=="Goose5")){
    Goose()
  }
  else if (TableroPermanente[Place1]=="Bridge"){
    Bridge()
  }
  else if (TableroPermanente[Place1]=="Dices"){
    Dices()
  }
  else if (TableroPermanente[Place1]=="Inn"){
    Inn()
  }
  else if (TableroPermanente[Place1]=="Jail"){
    Jail()
  }
  else if (TableroPermanente[Place1]=="Well"){
    Well()
  }
  else if (TableroPermanente[Place1]=="Maze"){
    Maze()
  }
  else if (TableroPermanente[Place1]=="Death"){
    Death()
  }
  else if (TableroPermanente[Place1]=="End"){
    FinishGame()
  }
  else {
    TableroVisible[Place1]<-Player_1
    print(TableroVisible)
    RollP1()
  }
}

Goose<-function(){ #Moves the player to the next goose
  if (TableroPermanente[Place1]=="Goose4"){
    Place1<<-Place1+4
  }
  else if (TableroPermanente[Place1]=="Goose5"){
    Place1<<-Place1+5
  }
  if (Place1==63){
    FinishGame()
  }
  else {
    print("From goose to goose, faster than a moose")
    print("You go to square:")
    print(TableroVisible[Place1])
    TableroVisible[Place1]<-Player_1
    print(TableroVisible)
    print("You roll again")
    Dice1()
  }
}

Bridge<-function(){ #Moves the player from one bridge to the other
  if (Place1==6){
    Place1<<-12
  }
  else if (Place1==12){
    Place1<<-6
  }
  print("From bridge to bridge, I roll as I reach")
  print("You go to square:")
  print(TableroVisible[Place1])
  TableroVisible[Place1]<-Player_1
  print(TableroVisible)
  print("You roll again")
  Dice1()
}

Dices<-function(){ #Moves the player from one dice to the other
  if (Place1==26){
    Place1<<-53
  }
  else if (Place1==53){
    Place1<<-26
  }
  print("From dice to dice, I roll to win the prize")
  print("You go to square:")
  print(TableroVisible[Place1])
  TableroVisible[Place1]<-Player_1
  print(TableroVisible)
  print("You roll again")
  Dice1()
}

Inn<-function(){ #Makes the player wait 2 turns at the Inn
  TableroVisible[Place1]<-Player_1
  print(TableroVisible)
  print("You miss 2 turns")
  RollP1()
}

Jail<-function(){ #Makes the player wait 3 turns in Jail
  TableroVisible[Place1]<-Player_1
  print(TableroVisible)
  print("You miss 3 turns")
  RollP1()
}

Well<-function(){ #Makes the player wait 4 turns in the Well
  TableroVisible[Place1]<-Player_1
  print(TableroVisible)
  print("You miss 4 turns, since other players cannot rescue you")
  RollP1()
}

Maze<-function(){ #Takes the player back to square 30
  Place1<<-30
  print("Lost in the Maze")
  print("You go to square:")
  print(TableroVisible[Place1])
  TableroVisible[Place1]<-Player_1
  print(TableroVisible)
  RollP1()
}

Death<-function(){ #Makes the player start again
  Place1<<-0
  print("Death: You start from the beginning")
  RollP1()
}

FinishGame<-function(){ #Ends the game after the player has won
  print("Congratulations! You have won the Game of the Goose")
  #F00 #F00 Record winner in .txt file
  quit()
}

Option3<-function(){ #Records the players' names and games won in .txt file
  #F00 #F00 Save game in .txt file
  print("Winner will be recorded in .txt file")
  Menu()
}

EndGame<-function(){ #Quits the game
  print("The current game has ended")
  quit()
}

Game<-function(){ #Starts the game
  print("Welcome to the Game of the Goose")
  Menu()
}

Game()
