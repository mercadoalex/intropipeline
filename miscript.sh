#!/bin/sh
# A simple script with a function...

add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift; shift;
  #Having shifted twice , the rest is now comments...
  COMMENTS=$@
  echo "Adding user $USER ......"
  echo useradd -c "$COMMENTS" $USER
  echo passwd $USER $PASSWORD
  echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

###
# cuerpo principal del script comienza aqui 
echo "comienzo del script............"
add_a_user bob sanchez Bob el constructor
add_a_user alex badpassword Alex Pumas gol 
add_a_user bilko peorpassword Bilko just an example
echo "el final de nuestro script......"
echo "Paz y amor"
