#!/bin/bash

clear


VOLTA=1
PASS=132

while (( $VOLTA != 0 )); do
	dialog --msgbox 'olá, Bem vindo ao Linux, Por Favor Aperte Em Ok Para Continuar ' 0 0
	QNT=1
	while (( $QNT <= 5 )); do
	dialog --title 'USUÁRIO' --inputbox 'Por Favor Insira seu Usuário' 0 0
	SENHA=$( dialog --stdout --title 'SENHA' --passwordbox 'Digite a Sua Senha Por Favor' 0 0 )
		if (( $SENHA == $PASS )); then
			dialog --msgbox 'Conta Válida' 0 0
			QNT=6
			VOLTA=0
			VAR=1
		else
			dialog --msgbox 'Senha Incorreta, tente novamente' 0 0
		fi
	let QNT=($QNT+1)
	done
	if (( $QNT == 6 )); then
		VOLTA=0
	fi
done

