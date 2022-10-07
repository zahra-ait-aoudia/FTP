#?/bin/bash

my_csvftp=Shell_Userlist.csv

sudo groupadd ftpjob9

while IFS="," read Id Prenom Nom Mdp Role;
do
     if [ "$id" -eq "$Id" ] 2>/dev/null;
    then
         sudo useradd -u $Id -p $Mdp $Prenom
	 sudo usermod -aG ftpjob9 ${Prenom, ,}
       
        if [ ${$Role:0:5} = "Admin" ];
       then
            sudo usermod -aG sudo $Prenom
       fi
     fi
done < $my_csvftp

sudo cp /home/zahra/FTP/Job9/proftpd.conf /etc/proftpd/proftpd.conf
