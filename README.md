# SSHub

## Que es SSHub?

Conexion fácil SSH por consola a Github

En cuestión de segundos podrás estar conectado a Github a través de SSH 

## Requisitos:

Tener Linux

Tener Git

### Copiar a tu terminal:

```bash
git clone https://github.com/zsh4k/sshub && cd sshub && chmod +x sshub.sh && ./sshub.sh  
```

Al ejecutar el comando en la terminal veremos lo siguiente

```bash
Claves SSH en el equipo
total 8
drwx------ 2 root root 4096 Dec 21 02:49 .
drwx------ 4 root root 4096 Dec 21 03:08 ..
-rw------- 1 root root    0 Dec 21 02:49 authorized_keys
Escribe tu correo de github
tuemail@gmail.com
Generando clave publica y privada ...
```

Lista de Claves SSH dentro de su equipo 

Escribir su correo de github

"tuemail@gmail.com"

output.

```bash
Generando clave publica y privada ...
Listo... si quieres agrega una frase de seguridad
Generating public/private ed25519 key pair.
Enter file in which to save the key (/root/.ssh/id_ed25519): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /root/.ssh/id_ed25519
Your public key has been saved in /root/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:BnWEZNKZlsBdwn+G0rYhljsJrTQTa8i0yt3Q7PSqv20 "tuemail@gmail.com"
The key's randomart image is:
+--[ED25519 256]--+
|     .o*=B+      |
|    . o+Xo       |
|   o =.= + .     |
|    = @.* * o    |
| . o B BS* =     |
|  o . +.= .      |
|       . .       |
|      ..E        |
|    .ooo.        |
+----[SHA256]-----+
Iniciando agente ssh en segundo plano
Agent pid 10281
Agregando clave privada al agente SSH
Identity added: /root/.ssh/id_ed25519 ("tuemail@gmail.com")
Esta es tu clave publica ...
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEwDiIA/k54EglwCeLptcjGWURQTEZTR1GORFz4n/IZ6 "tuemail@gmail.com"
... agregala en https://github.com/settings/keys
Probar conexion SSH con github
The authenticity of host 'github.com (192.30.255.113)' can't be established.
ECDSA key fingerprint is SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
```

Generar clave publica y privada para la conexion SSH

Enter Passphrase: (Mayor seguirdad)

Contraseña de tu clave ssh

Iniciando agente ssh en segundo plano

Agregando clave privada al agente SSH

¡IMPORTANTE! 

Para que funcione debemos copiar la clave publica generada
… en 

Copiar la clave publica pegar en [https://github.com/settings/keys](https://github.com/settings/keys)

Despues de agregar la clave publica en la pagina

Regresamos a la terminal  escribimos “yes”, damos enter

Are you sure you want to continue connecting (yes/no/[fingerprint])? yes

Si todo salio bien nos debe aparecer un mensaje como este

```bash
Warning: Permanently added 'github.com,192.30.255.113' (ECDSA) to the list of known hosts.
Connection closed by 192.30.255.113 port 22
```

Si algo no salio bien puede salirnos “Permission denied (publickey)”

```bash
Probar conexion SSH con github
Warning: Permanently added the ECDSA host key for IP address '192.30.255.113' to the list of known hosts.
git@github.com: Permission denied (publickey).
```
