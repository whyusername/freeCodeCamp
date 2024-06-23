#!/bin/bash
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
fi
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
NUMBER_RE='^[0-9]+$'
LETTER_RE='(^[a-zA-Z]{1,2}$)'
WORD_RE='([A-Z]|[a-z]){3,300}\w'

if [[ $1 =~ $NUMBER_RE ]]
then
  RESPONSE=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties JOIN elements USING(atomic_number) JOIN types USING(type_id) WHERE atomic_number=$1")
  if [[ -z $RESPONSE ]]
  then
    echo "I could not find that element in the database."
  else
    echo "$RESPONSE" | while read ATOMIC_NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    done
  fi  
fi

if [[ $1 =~ $LETTER_RE ]]
then
  RESPONSE=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties JOIN elements USING(atomic_number) JOIN types USING(type_id) WHERE symbol='$1'")
  if [[ -z $RESPONSE ]]
  then
    echo "I could not find that element in the database."
  else
    echo "$RESPONSE" | while read ATOMIC_NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    done
  fi
fi

if [[ $1 =~ $WORD_RE ]]
then
  RESPONSE=$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM properties JOIN elements USING(atomic_number) JOIN types USING(type_id) WHERE name='$1'")
  if [[ -z $RESPONSE ]]
  then
    echo "I could not find that element in the database."
  else
    echo "$RESPONSE" | while read ATOMIC_NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    done
  fi
fi



