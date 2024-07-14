#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess_game --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "\nWelcome to Number Guessing Game\n"
MAIN() {
	#get use name
  echo "Enter your username:"
  read USER_NAME
  echo "SELECT user_id FROM users WHERE user_name = '$USER_NAME'"
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name = '$USER_NAME'")
  # if user name doesn't exist   
  if [[ -z $USER_ID ]]
  then
    # get new user name
	  echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."

   	#insert to users table
    INSERT_NEW_USER=$($PSQL "insert into users(user_name) values('$USER_NAME')")
    #get user_id
    USER_ID=$($PSQL "select user_id from users where user_name = '$USER_NAME'")
  else
	  #get games played
	  GAMES_PLAYED=$($PSQL "select count(user_id) from games where user_id = '$USER_ID'")
    GAMES_PLAYED_FORMATTED=$(echo $GAMES_PLAYED | sed 's/ //g')
	  #get best game (guess)
  	BEST_GUESS=$($PSQL "select min(game_guesses) from games where user_id = '$USER_ID'")
    BEST_GUESS_FORMATTED=$(echo $BEST_GUESS | sed 's/ //g')

	  echo -e "\nWelcome back, $USER_NAME! You have played $GAMES_PLAYED_FORMATTED games, and your best game took $BEST_GUESS_FORMATTED guesses."
  fi

  #secret number
  SECRET=$((1 + $RANDOM % 1000))
  #echo "the secret number $SECRET"
  #count guesses
  TRIES=0
  #guess number
  # echo $SECRET
  GUESSED=false
  echo -e "\nGuess the secret number between 1 and 1000:"

  while [[ $GUESSED ]]; do

    read GUESS

    #if not an integer
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo -e "\nThat is not an integer, guess again:"
      #if correct guess
    elif [[ $SECRET = $GUESS ]]; then
      TRIES=$(($TRIES + 1))
      echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"
      #insert into db
      INSERTED_TO_GAMES=$($PSQL "INSERT into games(user_id, game_guesses) values($USER_ID, $TRIES)")
      # GUESSED=true
      break
    #if greater
    elif [[ $SECRET > $GUESS ]]; then
      TRIES=$(($TRIES + 1))
      echo -e "\nIt's higher than that, guess again:"
    #if smaller
    else
      TRIES=$(($TRIES + 1))
      echo -e "\nIt's lower than that, guess again:"
    fi
  done

  
}
 
MAIN
