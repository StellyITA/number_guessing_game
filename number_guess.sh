#!/bin/bash

SECRET=$((1 + $RANDOM % 1000))
TRIES=0

PSQL="psql -U freecodecamp -d number_guess -t -c"

echo "Enter your username:"
read NAME

USER=$($PSQL "SELECT username FROM users WHERE username='$NAME';")
GAMES=$($PSQL "SELECT games FROM users WHERE username='$NAME';")
BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$NAME';")

if [[ -n $USER ]]
then
 echo -e "\nWelcome back, $USER! You have played $GAMES games, and your best game took $BEST_GAME guesses." | sed -E "s/ +/ /g"
else
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
  INSERT=$($PSQL "INSERT INTO users(username,games) VALUES('$NAME',0);")
fi

echo -e "\nGuess the secret number between 1 and 1000:"
read GUESS

GAME () {
  TRIES=$(($TRIES + 1))
  if [[ ! $GUESS =~ [0-9]+ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    read GUESS
    GAME
  elif [[ $SECRET -lt $GUESS ]]
  then
    echo -e "\nIt's lower than that, guess again:"
    read GUESS
    GAME
  elif [[ $SECRET -gt $GUESS ]]
  then
   echo -e "\nIt's higher than that, guess again:"
   read GUESS
   GAME
  else
    echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"
    UPDATE=$($PSQL "UPDATE users SET games=$(($GAMES + 1)) WHERE username='$NAME'")
    if [[ $TRIES -lt $BEST_GAME ]] || [[ -z $BEST_GAME ]]
    then
      UPDATE_BEST=$($PSQL "UPDATE users SET best_game=$TRIES WHERE username='$NAME'")
    fi
  fi
}

GAME
