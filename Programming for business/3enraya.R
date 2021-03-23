
# Option 1: Configuration   
option1<-function()
{
  # Set the number of symbols to win
  consecutive=(readline(prompt = "How many consecutive symbols are required to win?: "))
  if(consecutive!= "q" & consecutive!= "Q")
  {
    while(consecutive!="1" & consecutive!= "2" & consecutive!="3" & consecutive!="4" & consecutive!="4" & consecutive!="5" & consecutive!="6" & consecutive!="7" & consecutive!="8" & consecutive!="9" & consecutive!="10" & consecutive!= "q" & consecutive!= "Q")
    {
      consecutive=(readline(prompt = "Enter a new value, please from 1 to 10: "))
    }
    if(consecutive!= "q" & consecutive!= "Q")
    {
      consecutive=as.integer(consecutive)
      cat("Game set for ",consecutive," consecutive symbols to win\n")
      T=1
      continue1=TRUE
      player1written1=FALSE
      player1written2=FALSE
      repeat
      {
        changedsymbol=FALSE
        # If the file doesn't exist
        if(file.exists("C://MandT//Group2.txt")==FALSE)
        {
          M=matrix(0,nrow=1,ncol=4)
          colnames(M)=c("Players","Games","Scores","Symbol")
          player=readline(prompt="Player 1, what is your name?: ")
          while(player=="")
          {
            player=readline(prompt = "Sorry but that is not a valid name, please enter a new one: ")
          }
          if(player=="q" | player=="Q")
          {continue1=FALSE}
          if(player!="q" & player!="Q")
          {
            player1=player
            S=readline(prompt="Select your symbol: ")
            if(S=="q" | S=="Q")
            {continue1=FALSE}
            if(S!="q" & S!="Q")
            {
              repeat
              {
                if(nchar(S)<=0 | nchar(S)>2)
                {
                  S=readline(prompt="Your symbol is too long or too short, please select a new symbol between 1 and 2 characters: ")
                }
                else
                {break}
              }
              M[1,1]=player
              M[1,4]=S
              symbol1=S
              write.table(M, file = "C://MandT//Group2.txt")
              player1written1=TRUE
            }
          }
        }
        
        #If the file already exists
        else
        {
          M=read.table(file = "C://MandT//Group2.txt", stringsAsFactors = FALSE)
          if(T%%2==1)
          {
            player=readline(prompt="Player 1, what is your name?: ")
            while(player=="")
            {
              player=readline(prompt = "Sorry but that is not a valid name, please enter a new one: ")
            }
          }
          if(T%%2==0)
          {
            player=readline(prompt="Player 2, what is your name?: ")
            while(player=="" | toupper(player)==toupper(player1))
            {
              player=readline(prompt = "Sorry but that is not a valid name, it may be empty or be the same as player 1, please enter a new one: ")
            }
          }
          if(player=="q" | player=="Q")
          {continue1=FALSE}
          if(player!="q" & player!="Q")
          {  
            playersays="unregistered"
            #Checking if the name is already on the file
            i=1
            newname="no"
            while(i<=nrow(M) & continue1==TRUE)
            {
              if(toupper(player)==toupper(M[i,1]))
              {
                playersays=readline(prompt = "This player is already in the file. Would you like to change the name?: ")
                while(playersays!="yes" & playersays!="YES" & playersays!="Yes" & playersays!="no" & playersays!="NO" & playersays!="No" & playersays!="q" & playersays!="Q")
                {
                  cat("Sorry, you need to enter a yes or no answer, try it again")
                  playersays=readline(prompt = "This player is already in the file. Would you like to change the name?: ")
                }
                if(playersays=="q" | playersays=="Q")
                {continue1=FALSE}
                if(playersays=="yes" | playersays=="YES" | playersays=="Yes")
                {
                  player=readline(prompt = "Type your new name here: ")
                  if(T%%2==1)
                  {
                    while(player=="")
                    {
                      player=readline(prompt = "Sorry but that is not a valid name, please enter a new one: ")
                    }
                  }
                  if(T%%2==0)
                  {
                    while(player=="" | toupper(player)==toupper(player1))
                    {
                      player=readline(prompt = "Sorry but that is not a valid name, it may be empty or be the same as player 1, please enter a new one: ")
                    } 
                  }
                  if(player=="q" | player=="Q")
                  {continue1=FALSE}
                  if(player!="q" & player!="Q")
                  {
                    i=0
                    newname="yes"
                  }
                }
                if(continue1==TRUE)
                {
                  if(playersays=="no" | playersays=="NO" | playersays=="No")
                  {
                    symbolsays=readline(prompt = "And do you want to play with the same symbol than last time?: ")
                    while(symbolsays!="yes" & symbolsays!="YES" & symbolsays!="Yes" & symbolsays!="no" & symbolsays!="NO" & symbolsays!="No" & symbolsays!="q" & symbolsays!="Q")
                    {
                      cat("Sorry, you need to enter a yes or no answer, try it again")
                      symbolsays=readline(prompt = "And do you want to play with the same symbol than last time?: ")
                    }
                    if(symbolsays=="q" | symbolsays=="Q")
                    {continue1=FALSE}
                    if(symbolsays=="yes" | symbolsays=="Yes" | symbolsays=="YES")
                    {
                      S=M[i,4]
                      changedsymbol=TRUE
                    }
                    if(symbolsays=="no" | symbolsays=="NO" | symbolsays=="No")
                    {
                      S=readline(prompt = "Select your new symbol: ")
                      repeat
                      {
                        if(nchar(S)<=0 | nchar(S)>2)
                        {
                          S=readline(prompt="Your symbol is too long or too short, please select a new symbol between 1 and 2 characters: ")
                        }
                        else
                        {break}
                      }
                      if(S=="q" | S=="Q")
                      {continue1=FALSE}
                      if(S!="q" & S!="Q")
                      {
                        M[i,4]=S
                        write.table(M, file = "C://MandT//Group2.txt")
                        changedsymbol=TRUE
                      }
                    }
                  }
                }
              }
              i=i+1
            }
            if(continue1==TRUE)
            {
              if(changedsymbol==FALSE)
              {
                if(playersays=="unregistered" | newname=="yes")
                {
                  S=readline(prompt = "Select your symbol: ")
                  repeat
                  {
                    if(nchar(S)<=0 | nchar(S)>2)
                    {
                      S=readline(prompt="Your symbol is too long or too short, please select a new symbol between 1 and 2 characters: ")
                    }
                    else
                    {break}
                  }
                }
              }
              if(S=="q" | S=="Q")
              {continue1=FALSE}
              if(S!="q" & S!="Q")
              {
                if(T%%2==1)
                {
                  player1=player
                  symbol1=S
                }
                if(T%%2==0)
                {
                  while(symbol1==S)
                  {
                    S=readline(prompt = "Sorry, that is the same symbol that player 1 has, please enter a new one: ")
                    repeat
                    {
                      if(nchar(S)<=0 | nchar(S)>2)
                      {
                        S=readline(prompt="Your symbol is too long or too short, please select a new symbol between 1 and 2 characters: ")
                      }
                      else
                      {break}
                    }
                  }
                  if(S=="q" | S=="Q")
                  {continue1=FALSE}
                  if(S!="q" & S!="Q")
                  {
                    player2=player
                    symbol2=S
                  }
                }
                if(continue1==TRUE)
                {
                  if(playersays=="yes" | playersays=="YES" | playersays=="Yes" | playersays=="unregistered")
                  {
                    M=rbind(M,c(player,0,0,S))
                    write.table(M, file = "C://MandT//Group2.txt")
                    player1written2=TRUE
                  }
                }
              }
            }
          }
        }
        T=T+1
        if(T>2 | continue1==FALSE)
        {
          break
        }
      }
      T=T-1
      if(player1written1==TRUE & continue1==FALSE)
      {
        file.remove("C://MandT//Group2.txt")
      }
      if(player1written2==TRUE & T==2 & continue1==FALSE)
      {
        M=M[-nrow(M),]
        write.table(M, file = "C://MandT//Group2.txt")
      }
      if(continue1==TRUE)
      {
        list=list(consecutive, player1, player2, symbol1, symbol2)
        return(list)
      }
    }
  }
}


# Option 2: Play
option2<-function(listData)
{
  #Returning the list
  consecutive=listData[[1]]
  player1=listData[[2]]
  player2=listData[[3]]
  symbol1=listData[[4]]
  symbol2=listData[[5]]
  
  # Defining the matrix
  cat("Game has started, remember, you have to get" ,consecutive, "symbols together to win. \n")
  cat("Good luck!! \n")
  table=matrix("b", nrow = 10, ncol = 10)
  print(table)
  PP1=100
  PP2=100
  T=1
  # Game developement
  continue2=TRUE
  repeat
  {
    # Symbol and name player 1
    if(T%%2==1)
    {  
      P=player1
      S=symbol1
      PP=PP1
    }
    # Symbol and name player 2
    if(T%%2==0)
    {  
      S=symbol2
      P=player2
      PP=PP2
    }
    # Entering positions
    cat(P, ", it is your turn")
    row=(readline(prompt = "Insert a row: "))
    if(row!= "q" & row!="Q")
    {
      while(row!="1" & row!= "2" & row!="3" & row!="4" & row!="4" & row!="5" & row!="6" & row!="7" & row!="8" & row!="9" & row!="10" & row!="q" & row!="Q")
      {
        row=(readline(prompt = "Sorry, that is not in the table, please assign a different value: "))
      }
      if(row!="q" & row!="Q")
      {
        row=as.integer(row)
        column=(readline(prompt = "Insert a column: "))
        if(column!= "q" & column!="Q")
        {
          while(column!="1" & column!= "2" & column!="3" & column!="4" & column!="4" & column!="5" & column!="6" & column!="7" & column!="8" & column!="9" & column!="10" & column!="q" & column!="Q")
          {
            column=(readline(prompt = "Sorry, that is not in the table, please assign a different value: "))
          }
          if(column!= "q" & column!="Q")
          {
            column=as.integer(column)
            if(table[row,column]!="b")
            {
              continue=TRUE
              repeat
              {
                cat("Sorry, that position is already taken, enter a new empty position \n")
                row=(readline(prompt = "Insert a new row: "))
                if(row=="Q" | row=="q")
                {continue=FALSE}
                else
                {
                  while(row!="1" & row!= "2" & row!="3" & row!="4" & row!="4" & row!="5" & row!="6" & row!="7" & row!="8" & row!="9" & row!="10" & row!="q" & row!="Q")
                  {
                    row=(readline(prompt = "Sorry, that is not in the table, please assign a different value: "))
                  }
                  if(row=="Q" | row=="q")
                  {continue=FALSE}
                  else
                  {
                    row=as.integer(row)
                    column=(readline(prompt = "Insert a new column: "))
                    if(column=="Q" | column=="q")
                    {continue=FALSE}
                    else
                    {
                      while(column!="1" & column!= "2" & column!="3" & column!="4" & column!="4" & column!="5" & column!="6" & column!="7" & column!="8" & column!="9" & column!="10" & column!="Q" & column!="q")
                      {
                        column=(readline(prompt = "Sorry, that is not in the table, please assign a different value: "))
                      }
                      if(column=="Q" | column=="q")
                      {continue=FALSE}
                      else
                      {
                        column=as.integer(column)
                        if(table[row,column]=="b")
                        {continue=FALSE}
                      }
                    }
                  }
                }
                if(continue==FALSE)
                {break}
              }
            }
            if(row!="q" & row!="Q" & column!="q" & column!="Q")
            {
              # Writing the symbol
              if(table[row,column]=="b")
              {  
                table[row,column] <- S
                print(table)
              }
              
              #Points
              if(T%%2==1)
              {
                PP=PP-5
                PP1=PP
              }
              if(T%%2==0)
              {
                PP=PP-5
                PP2=PP
              }
              
              # Checking horizontally to the rigth
              WR=0
              WL=0
              WTH=0
              WU=0
              WD=0
              WTV=0
              WDRD=0
              WDLU=0
              WDLT1=0
              WDRU=0
              WDLD=0
              WDLT2=0
              rowcheck=row
              colcheck=column
              continue=TRUE
              repeat
              { 
                if(colcheck>=1 & colcheck<=10)
                {
                  if(table[rowcheck,colcheck]==S)
                  {
                    WR=WR+1
                    colcheck=colcheck+1
                  }
                  else
                  {continue=FALSE}
                }
                else
                {continue=FALSE}
                if(continue==FALSE)
                {break}
              }
              # Checking horizontally to the left
              if(WR!=consecutive)
              {
                rowcheck=row
                colcheck=column
                continue=TRUE
                repeat
                { 
                  if(colcheck>=1 & colcheck<=10)
                  {
                    if(table[rowcheck,colcheck]==S)
                    {
                      WL=WL+1
                      colcheck=colcheck-1
                    }
                    else
                    {continue=FALSE}
                  }
                  else
                  {continue=FALSE}
                  if(continue==FALSE)
                  {break}
                }
              }
              # Checking horizontally both sides
              if(WR!=consecutive & WL!=consecutive)
              {
                WTH=WR+WL-1
              }
              # Checking vertically up
              if(WL!=consecutive & WR!=consecutive & WTH!=consecutive)
              {
                rowcheck=row
                colcheck=column
                continue=TRUE
                repeat
                { 
                  if(rowcheck>=1 & rowcheck<=10)
                  {
                    if(table[rowcheck,colcheck]==S)
                    {
                      WU=WU+1
                      rowcheck=rowcheck+1
                    }
                    else
                    {continue=FALSE}
                  }
                  else
                  {continue=FALSE}
                  if(continue==FALSE)
                  {break}
                }
              }
              # Checking vertically down
              if(WR!=consecutive & WL!=consecutive & WTH!=consecutive & WU!=consecutive)
              {
                rowcheck=row
                colcheck=column
                continue=TRUE
                repeat
                { 
                  if(rowcheck>=1 & rowcheck<=10)
                  {
                    if(table[rowcheck,colcheck]==S)
                    {
                      WD=WD+1
                      rowcheck=rowcheck-1
                    }
                    else
                    {continue=FALSE}
                  }
                  else
                  {continue=FALSE}
                  if(continue==FALSE)
                  {break}
                }
              }
              # Checking vertically both sides
              if(WR!=consecutive & WL!=consecutive & WTH!=consecutive & WU!=consecutive & WD!=consecutive)
              {
                WTV=WU+WD-1
              }
              # Checking diagonally rigth and down
              if(WL!=consecutive & WR!=consecutive & WTH!=consecutive & WU!=consecutive & WD!=consecutive & WTV!=consecutive)
              {
                rowcheck=row
                colcheck=column
                continue=TRUE
                repeat
                { 
                  if((rowcheck>=1 & rowcheck<=10) & (colcheck>=1 & colcheck<=10))
                  {
                    if(table[rowcheck,colcheck]==S)
                    {
                      WDRD=WDRD+1
                      rowcheck=rowcheck+1
                      colcheck=colcheck+1
                    }
                    else
                    {continue=FALSE}
                  }
                  else
                  {continue=FALSE}
                  if(continue==FALSE)
                  {break}
                }
              }
              # Checking diagonally left and up
              if(WR!=consecutive & WL!=consecutive & WTH!=consecutive & WU!=consecutive & WD!=consecutive & WTV!=consecutive & WDRD!=consecutive)
              {
                rowcheck=row
                colcheck=column
                continue=TRUE
                repeat
                { 
                  if((rowcheck>=1 & rowcheck<=10) & (colcheck>=1 & colcheck<=10))
                  {
                    if(table[rowcheck,colcheck]==S)
                    {
                      WDLU=WDLU+1
                      rowcheck=rowcheck-1
                      colcheck=colcheck-1
                    }
                    else
                    {continue=FALSE}
                  }
                  else
                  {continue=FALSE}
                  if(continue==FALSE)
                  {break}
                }
              }
              # Checking diagonally 1
              if(WR!=consecutive & WL!=consecutive & WTH!=consecutive & WU!=consecutive & WD!=consecutive & WTV!=consecutive & WDRD!=consecutive & WDLU!=consecutive)
              {
                WDLT1=WDRD+WDLU-1
              }
              # Checking diagonally right and up
              if(WR!=consecutive & WL!=consecutive & WTH!=consecutive & WU!=consecutive & WD!=consecutive & WTV!=consecutive & WDRD!=consecutive & WDLU!=consecutive & WDLT1!=consecutive)
              {
                rowcheck=row
                colcheck=column
                continue=TRUE
                repeat
                { 
                  if((rowcheck>=1 & rowcheck<=10) & (colcheck>=1 & colcheck<=10))
                  {
                    if(table[rowcheck,colcheck]==S)
                    {
                      WDRU=WDRU+1
                      rowcheck=rowcheck-1
                      colcheck=colcheck+1
                    }
                    else
                    {continue=FALSE}
                  }
                  else
                  {continue=FALSE}
                  if(continue==FALSE)
                  {break}
                }
              }
              # Checking diagonally left and down
              if(WR!=consecutive & WL!=consecutive & WTH!=consecutive & WU!=consecutive & WD!=consecutive & WTV!=consecutive & WDRD!=consecutive & WDLU!=consecutive & WDLT1!=consecutive & WDRU!=consecutive)
              {
                rowcheck=row
                colcheck=column
                continue=TRUE
                repeat
                { 
                  if((rowcheck>=1 & rowcheck<=10) & (colcheck>=1 & colcheck<=10))
                  {
                    if(table[rowcheck,colcheck]==S)
                    {
                      WDLD=WDLD+1
                      rowcheck=rowcheck+1
                      colcheck=colcheck-1
                    }
                    else
                    {continue=FALSE}
                  }
                  else
                  {continue=FALSE}
                  if(continue==FALSE)
                  {break}
                }
              }
              # Checking diagonally 2
              if(WR!=consecutive & WL!=consecutive & WTH!=consecutive & WU!=consecutive & WD!=consecutive & WTV!=consecutive & WDRD!=consecutive & WDLU!=consecutive & WDLT1!=consecutive & WDRU!=consecutive & WDLD!=consecutive)
              {
                WDLT2=WDRU+WDLD-1
              }
              
              if(WR>=consecutive | WL>=consecutive | WTH>=consecutive | WU>=consecutive | WD>=consecutive | WTV>=consecutive | WDRD>=consecutive | WDLU>=consecutive | WDLT1>=consecutive | WDRU>=consecutive | WDLD>=consecutive | WDLT2>=consecutive)
              {
                PP=PP+10
                if(T%%2==1)
                {
                  PP1=PP
                }
                if(T%%2==0)
                {
                  PP2=PP
                }
                cat("GAME OVER" ,P, "IS THE WINNER!!\n")
                cat(player1, "got" ,PP1, "points\n")
                cat(player2, "got" ,PP2, "points\n")
                M=read.table(file = "C://MandT//Group2.txt", stringsAsFactors = FALSE)
                for(i in 1:nrow(M))
                {
                  if(player1==M[i,1])
                  {
                    M[i,2]=M[i,2]+1
                    M[i,3]=M[i,3]+PP1
                  }
                  if(player2==M[i,1])
                  {
                    M[i,2]=M[i,2]+1
                    M[i,3]=M[i,3]+PP2
                  }
                }
                write.table(M, file = "C://MandT//Group2.txt")
                continue2=FALSE
              }
              T=T+1
            }
          }
        }
      }
    }
    row=as.character(row)
    if(row=="q" | row=="Q")
    {
      continue2=FALSE
      column="no"
    }
    column=as.character(column)
    if(column=="q" | column=="Q")
    {
      continue2=FALSE
    }
    if(continue2==FALSE)
    {break}
  }
}


# Option 3: Records   
option3<-function()
{
  if(file.exists("C://MandT//Group2.txt")==TRUE)
  {
    cat("Records are shown from higher scores to lower \n")
    M=read.table(file = "C://MandT//Group2.txt", stringsAsFactors = FALSE)
    M=M[order(M[,3], decreasing = TRUE),]
    rownames(M) <- NULL
    print(M)
    write.table(M, file = "C://MandT//Group2.txt")
  }
  if(file.exists("C://MandT//Group2.txt")==FALSE)
  {
    cat("Sorry, records is not available because the game has never been played on this computer, you will be redirected to the menu\n")
  }
}

# Option 5: Color customization
option5<-function(listData)
{
  #Returning the list
  player1=listData[[2]]
  player2=listData[[3]]
  symbol1=listData[[4]]
  symbol2=listData[[5]]
  
  #Presenting the option
  library(crayon)
  cat(bold('Welcome to this ' %+% green$underline$bold('additional functionality') %+% ' that will let you ' %+% green$underline$bold('style your data\n')))
  cat(red$underline("Let's start!\n"))
  
  for(T in 1:2)
  {
    if(T%%2==1)
    {
      cat(bgYellow$italic('Now' %+% reset(' it is your turn, ') %+% bold$underline(player1,'\n')))
    }
    if(T%%2==0)
    {
      cat(bgYellow$italic('Now' %+% reset(' it is your turn, ') %+% bold$underline(player2,'\n')))
    }
    
    #Choosing the background of the name
    cat(bold$underline("First you can choose the backgorund color of your name\n"))
    cat('1. ' %+% bgRed('Red\n'))
    cat('2. ' %+% bgGreen('Green\n'))
    cat('3. ' %+% bgYellow('Yellow\n'))
    cat('4. ' %+% bgBlue('Dark Blue\n'))
    cat('5. ' %+% bgMagenta('Purple\n'))
    cat('6. ' %+% bgCyan('Light Blue\n'))
    cat('7. ' %+% bgWhite('Gray\n'))
    colorname=readline(prompt = "What color do you want your name's background to be?: ")
    while(colorname!="1" & colorname!="2" & colorname!="3" & colorname!="4" & colorname!="5" & colorname!="6" & colorname!="7")
    {
      colorname=readline(prompt = "Sorry, that's not a color on the list, remember that you need to enter the number assignet to it: ")
    }
    
    #Assigning the colors:
    if(colorname=="1")
    {colorname=bgRed}
    else
    {
      if(colorname=="2")
      {colorname=bgGreen}
      else
      {
        if(colorname=="3")
        {colorname=bgYellow}
        else
        {
          if(colorname=="4")
          {colorname=bgBlue}
          else
          {
            if(colorname=="5")
            {colorname=bgMagenta}
            else
            {
              if(colorname=="6")
              {colorname=bgCyan}
              else
              {
                if(colorname=="7")
                {colorname=bgWhite}
              }}}}}}
    
    #Choosing the color of the symbol
    cat(bold$underline("Now it's time to choose the color of the symbol\n"))
    cat('1. ' %+% red('Red\n'))
    cat('2. ' %+% green('Green\n'))
    cat('3. ' %+% yellow('Yellow\n'))
    cat('4. ' %+% blue('Dark Blue\n'))
    cat('5. ' %+% magenta('Purple\n'))
    cat('6. ' %+% cyan('Light Blue\n'))
    cat('7. ' %+% silver('Gray\n'))
    colorsymbol=readline(prompt = "What color do you want your symbol to be?: ")
    while(colorsymbol!="1" & colorsymbol!="2" & colorsymbol!="3" & colorsymbol!="4" & colorsymbol!="5" & colorsymbol!="6" & colorsymbol!="7")
    {
      colorsymbol=readline(prompt = "Sorry, that's not a color on the list, remember that you need to enter the number assignet to it: ")
    }
    
    #Assigning the colors:
    if(colorsymbol=="1")
    {colorsymbol=red}
    else
    {
      if(colorsymbol=="2")
      {colorsymbol=green}
      else
      {  
        if(colorsymbol=="3")
        {colorsymbol=yellow}
        else
        {
          if(colorsymbol=="4")
          {colorsymbol=blue}
          else
          {
            if(colorsymbol=="5")
            {colorsymbol=magenta}
            else
            {
              if(colorsymbol=="6")
              {colorsymbol=cyan}
              else
              {
                if(colorsymbol=="7")
                {colorsymbol=white}
                
              }}}}}}
    
    #Assigning them to each variable
    if(T%%2==1)
    {
      colorname1=colorname
      colorsymbol1=colorsymbol
    }
    if(T%%2==0)
    {
      colorname2=colorname
      colorsymbol2=colorsymbol
    }
  }
  
  #Printing the results
  cat(bold("It's time to see the results!\n"))
  cat(underline("Player 1: ")); cat(colorname1(player1)); cat(colorsymbol1$bold(' ' ,symbol1, '\n'))
  cat(underline("Player 2: ")); cat(colorname2(player2)); cat(colorsymbol2$bold(' ' ,symbol2, '\n'))
}

#Option 6: DataCharts
option6<-function()
{
  library(ggplot2)
  if(file.exists("C://MandT//Group2.txt")==TRUE)
  {
    M=read.table(file = "C://MandT//Group2.txt", stringsAsFactors = FALSE)
    players=c()
    scores=c()
    for(i in 1:nrow(M))
    {
      P=as.character(M[i,1])
      players=c(players, P)
    }
    for(i in 1:nrow(M))
    {
      S=as.numeric(M[i,3])
      scores=c(scores, S)
    }
    M=data.frame(players, scores)
    print(M)
    graph=ggplot(data=M, aes(x=players, y=scores)) + geom_bar(stat="identity")
    print(graph)
  }
  if(file.exists("C://MandT//Group2.txt")==FALSE)
  {
    cat("Sorry, statistical charts are not available because the game has never been played on this computer, you will be redirected to the menu\n")
  }
}

# this is the menu
menu<-function()
{
  cat("Welcome to Noughts and Crosses!! \n");
  repeat
  {
    cat("This is the menu: \n")
    cat("1: Configuration \n")
    cat("2: Play \n")
    cat("3: Records \n")
    cat("4: Game over \n")
    cat("5: Colors customization. (REQUIRED PACKAGE: crayon) \n")
    cat("6: Statistical Charts (REQUIRED PACKAGE: ggplot2) \n")
    option=(readline(prompt = "Select an option from 1 to 6: "))
    while(option!="1" & option!="2" & option!="3" & option!="4" & option!="5" & option!="6")
    {
      option=(readline(prompt = "Sorry, that is not an option in the menu, choose an option from 1 to 6: "))
    }
    option=as.integer(option)
    if(option==1)
    {
      cat("Configuration selected \n")
      listData=option1()
    }
    if(option==2)
    {
      if(exists("listData")==TRUE)
      {
        if(is.null(listData)==FALSE)
        {
          cat("Play selected \n")
          option2(listData)
        }
        if(is.null(listData)==TRUE)
        {
          cat("Sorry, you still have not configured the game, so option 2 cannot be launched. Configure the game before playing it.\n")
        }
      }
      if(exists("listData")==FALSE)
      {
        cat("Sorry, you still have not configured the game, so option 2 cannot be launched. Configure the game before playing it.\n")
      }
    }
    if(option==3)
    {
      cat("Records selected \n")
      option3()
    }
    if(option==4)
    {
      cat("Game over selected. Game has ended, exiting the game...\n")
      break
    }
    if(option==5)
    {
      if(exists("listData")==TRUE)
      {
        if(is.null(listData)==FALSE)
        {
          cat("Colors customization selected\n")
          option5(listData)
        }
        if(is.null(listData)==TRUE)
        {
          cat("Sorry, you still have not configured the game, so option 5 cannot be launched. Configure the game before playing it.\n")
        }
      }
      if(exists("listData")==FALSE)
      {
        cat("Sorry, you still have not configured the game, so option 5 cannot be launched. Configure the game before playing it.\n")
      }
    }
    if(option==6)
    {
      cat("Showing statistical charts...\n")
      option6()
    }
  }
}
