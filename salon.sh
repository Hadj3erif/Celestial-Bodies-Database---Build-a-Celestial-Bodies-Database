#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
#get the list of the services

  OFFERED_SERVICE=$($PSQL "SELECT * FROM services")
  # set up the output 
  echo -e "\nWelcome to My Salon, how can I help you?"
  MAIN_MENU(){
  echo "$OFFERED_SERVICE" | while read SERVICE_ID BAR SERVICE_NAME BAR
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
  }
  MAIN_MENU
  read SERVICE_ID_SELECTED
  CHOOSED_SERIVCE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  if [[ -z $CHOOSED_SERIVCE_NAME ]]
  then
    echo -e "\nI could not find that service. What would you like today?"
    MAIN_MENU
  else
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE' ")
    if [[ -z $CUSTOMER_ID ]]
    then
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO customers(name,phone) VALUES('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
    else
      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE customer_id=$CUSTOMER_ID")
    fi
    echo -e "\nWhat time would you like your$CHOOSED_SERIVCE_NAME, $CUSTOMER_NAME?"
    read SERVICE_TIME
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE' ")
    INSERT_APPOINTMENT_INFO=$($PSQL "INSERT INTO appointments(customer_id,service_id,time) VALUES($CUSTOMER_ID,$SERVICE_ID_SELECTED,'$SERVICE_TIME')")
    echo -e "\nI have put you down for a $(echo $CHOOSED_SERIVCE_NAME | sed -r 's/^ *| *$//g') at $SERVICE_TIME, $CUSTOMER_NAME."
    
  fi

