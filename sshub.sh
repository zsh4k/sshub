#!/bin/bash
echo Claves SSH en el equipo

ls -al ~/.ssh

echo Escribe tu correo de github

read correo

echo Generando clave publica y privada ...

echo Listo... si quieres agrega una frase de seguridad

ssh-keygen -t ed25519 -C '"'"$correo"'"'

echo Iniciando agente ssh en segundo plano

eval "$(ssh-agent -s)"

echo Agregando  clave privada al agente SSH

ssh-add ~/.ssh/id_ed25519

echo Esta es tu clave publica ...

cat ~/.ssh/id_ed25519.pub

echo ... agregala en "https://github.com/settings/keys"

echo Probar conexion SSH con github
ssh -T git@github.com
