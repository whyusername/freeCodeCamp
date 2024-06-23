#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=guessing_game -t --no-align -c"


echo "Enter your username:"
read USERNAME
USERNAME_RESULT=$($PSQL "SELECT username FROM game WHERE username='$USERNAME'")

if [[ -z $USERNAME_RESULT ]]
then
  INSERT_USERNAME=$($PSQL "INSERT INTO game(username) VALUE('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(username) FROM game WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT guesses FROM game WHERE username='$USERNAME' ORDER BY guesses LIMIT 1")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi


RANDOM_NUMBER=$((1 + $RANDOM % 1000))
NUMBER_OF_GUESSES=0
echo "Guess the secret number between 1 and 1000:"
while [[ $GUESS != $RANDOM_NUMBER ]]
do
  read GUESS
  if [[ ! $GUESS =~ ^(0|[1-9][0-9]*)$ ]]
  then
    echo "That is not an integer, guess again:"
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
  elif (( $GUESS > $RANDOM_NUMBER ))
  then
    echo "It's lower than that, guess again:"
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
  elif (( $GUESS < $RANDOM_NUMBER ))
  then
    echo "It's higher than that, guess again:"
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
  elif (( $GUESS == $RANDOM_NUMBER ))
  then
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES+1))
    GAME_RESULTS=$($PSQL "INSERT INTO game(username, guesses) VALUES('$USERNAME', $NUMBER_OF_GUESSES)")
  fi
done

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"


