#!/bin/bash

echo "Criando Diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretorios Criados!"

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados!"

echo "Criando Usuarios..."

useradd carlos -c "Carlos de souza" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -6 senha123) && passwd guest10 -e

useradd maria -c "Maria de souza" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -6 senha123) && passwd guest10 -e

useradd joao -c "João de souza" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -6 senha123) && passwd guest10 -e-p $(openssl passwd -6 senha123) && passwd guest10 -e

useradd debora -c "Debora de souza" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -6 senha123) && passwd guest10 -e

useradd sebastiana -c "Sebastiana de souza" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -6 senha123) && passwd guest10 -e-p $(openssl passwd -6 senha123) && passwd guest10 -e

useradd roberto -c "Roberto de souza" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -6 senha123) && passwd guest10 -e

useradd josefina -c "Josefina de souza" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -6 senha123) && passwd guest10 -e

useradd amanda -c "Amanda de souza" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -6 senha123) && passwd guest10 -e

useradd rogerio -c "Rogerio de souza" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -6 senha123) && passwd guest10 -e 

echo "Usuarios Criados!"

echo "direcionando os grupos aos seus DIRETORIOS..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "finalizado os grupos aos diretorios!"

echo "Adicionando permissões..."

chmod 777 /publico/ 
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/ 

echo "permissões adicionadas!"

echo "Arquivo finalizado!!!"





