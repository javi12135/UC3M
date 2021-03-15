#Paula Esparza Valdés 100418689
#Fco. Javier Hernández Ares 100453593
menu<-function(){
  print("Welcome to the Game of the Goose")
  num_of_players=100
  while (num_of_players>=5) {
    print("How many players are in this game? Must be less than 5")
    num_of_players=scan(,,1)
  }
  Player_1=readline(prompt="Please, insert the name of player 1 ")
  if (num_of_players>=2) {
    Player_2=readline(prompt="Please, insert the name of player 2 ")
    if (num_of_players>=3) {
      Player_3=readline(prompt="Please, insert the name of player 3 ")
      if (num_of_players==4) {
        Player_4=readline(prompt="Please, insert the name of player 4 ")
      }
    }
  }
}
