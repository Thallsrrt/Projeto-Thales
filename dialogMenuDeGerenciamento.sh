#!/bin/bash

clear

while (( $VAR == 1 )); do
	OPCAO=$( dialog --stdout --menu 'Escolha Um Gerenciador' 0 0 0	\
		1 'GERENCIADOR DE TAREFAS'   				\
		2 'GERENCIADOR DE USUÁRIO '				\
		3 'GERENCIADOR DE REDE    '				\
		4 'GERENCIADOR DE REPOSITORIO '				\
		5 'GERENCIADOR DE DISPOSITIVOS'				\
		6 'SAIR'						)
