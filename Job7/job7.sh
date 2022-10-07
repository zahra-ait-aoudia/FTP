#?/bin/bash

# installation des paquets

sudo apt install proftpd-*
sudo apt install openssl
sudo apt install filezilla

#maise à jour des paquets

sudo apt update && sudo apt upgrade

#crer un dossier ssl

mkdir /etc/proftpd/ssl

#attribue la cle et le certificat pour openssl


sudo openssl req -x509 -newkey rsa:2048 -keyout /etc/proftpd/ssl/proftpd.key.pem -out /etc/proftpd/ssl/proftpd.cert.pem -nodes -days 365

#copier des configuration
 
cp /home/zahra/Documents/proftpdcopie.conf /etc/proftpd/proftpd.conf
cp /home/zahra/Documents/modulescopie.conf /etc/proftpd/modules.conf
cp /home/zahra/Documents/tlscopie.conf /etc/proftpd/tls.conf

#récuperer les dernier modification

sudo systemctl restart proftpd
# creer les utilisateurs

sudo useradd -m -p kalimac merry
sudo useradd -m -p secondbreakfast pippin

#récuperer les dernier modification

sudo systemctl restart proftpd

#exécuter falezilla

filezilla
