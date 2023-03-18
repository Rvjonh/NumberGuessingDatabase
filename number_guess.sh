#!/bin/bash
# Programn to guess numbers
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

READ_USERNAME(){
  echo "Enter your username:"
  read USERNAME

  DATA_USERNAME=$($PSQL "SELECT u.user_id, u.username, COUNT(game_id) as n_games, MIN(guesses) BEST FROM users AS u 
                          INNER JOIN games USING(user_id) GROUP BY user_id HAVING u.username LIKE '$USERNAME';")

  if [[ -z $DATA_USERNAME ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    q=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME');")

    if [[ $q ]]
    then
      PLAY_GUESS_GAME
    else
      echo "Sorry we could not register you."
    fi
  else
    echo "$DATA_USERNAME" | while IFS='|' read USER_ID USERNAME N_GAMES BEST_GAME
    do
      echo "Welcome back, $USERNAME! You have played $N_GAMES games, and your best game took $BEST_GAME guesses."
    done

    PLAY_GUESS_GAME
  fi
}

PLAY_GUESS_GAME(){
  if [[ -z $1 ]]
  then
    GUESSES_TRIES=1
    NUMBER=$(( $RANDOM % 1000 + 1 ))
    echo "Guess the secret number between 1 and 1000:"
  else
    echo $1
    GUESSES_TRIES=$(( $GUESSES_TRIES+1 ))
  fi
  read USER_NUMBER

  if [[ $USER_NUMBER =~ ^[0-9]+$ ]]
  then
    if [[ $USER_NUMBER -eq $NUMBER ]]
    then
      echo "You guessed it in $GUESSES_TRIES tries. The secret number was $USER_NUMBER. Nice job!"
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
      q=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $GUESSES_TRIES);")
    elif [[ $USER_NUMBER -gt $NUMBER ]]
    then
      PLAY_GUESS_GAME "It's lower than that, guess again:"
    else
      PLAY_GUESS_GAME "It's higher than that, guess again:"
    fi
  else
    PLAY_GUESS_GAME "That is not an integer, guess again:"
  fi
  
}

READ_USERNAME
