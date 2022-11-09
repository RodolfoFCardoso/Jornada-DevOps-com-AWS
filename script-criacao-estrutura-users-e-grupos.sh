#Script de Criação de Estrutura de Usuários, Diretórios e Permissões

#!/bin/bash

	echo "INICIANDO SCRIPT"

	echo "Criando os Diretórios"

	 mkdir /publico
	 mkdir /adm
	 mkdir /ven
	 mkdir /sec

	echo "Criação de Diretórios finalizado"

		echo "Criando os grupos"

		groupadd GRP_ADM
		groupadd GRP_VEN
		groupadd GRP_SEC

		echo "Finalizando criação dos grupos"

		echo "Criando os usuários"

		useradd carlos -c "Calos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd carlos -e

		useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd maria -e

		useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd joao -e

		useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd debora -e

		useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd sebastiana -e

		useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd roberto -e

		useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd josefina -e

		useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd amanda -e

		useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
		#trocar a senha no primeiro acesso
		passwd rogerio -e

		echo "Finalizando Criando dos usuários"

			echo "Adicionando os usuários nos grupos"
			usermod -G GRP_ADM carlos
			usermod -G GRP_ADM maria
			usermod -G GRP_ADM joao
				usermod -G GRP_VEN debora
				usermod -G GRP_VEN sebastiana
				usermod -G GRP_VEN roberto
					usermod -G GRP_SEC josefina
					usermod -G GRP_SEC amanda
					usermod -G GRP_SEC rogerio
			echo "Finalizando as adições dos usuários nos grupos"

				echo "Dando as permissões necessárias"
					chown root:GRP_ADM /adm
					chown root:GRP_VEN /ven
					chown root:GRP_SEC /sec
					
						chmod 777 /publico
						chmod 770 /adm
						chmod 770 /ven
						chmod 770 /sec
				echo "Finalizando o permissionamento"

echo "FIM!!!!"