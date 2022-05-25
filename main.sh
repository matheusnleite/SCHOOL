#!/bin/bash
MENUOPCAO=0
MENU2=x

menu () {
    clear
    echo "          =======         "
    echo "          = CAU =         "
    echo "          =======         "
    echo ""
    echo "Selecione uma opcao: "
    echo "1 - Horarios"
    echo "2 - Provas"
    echo "S - SAIR"

    read -p "Opcao: " MENUOPCAO

    
}

horarios () {
    clear
    echo " SEGUNDA       TERÇA      QUARTA       QUINTA      SEXTA"
    echo "==========================================================="
    echo "RELIGIAO      INGLES      INGLES      PORTUGUES   REDACAO"
    echo "MATEMATICA    PORTGUES    CAPELA      ESPANHOL    BIOLOGIA"
    echo "BIOLOGIA      HISTORIA    GEOGRAFIA   HISTORIA    ED.FISICA"
    echo "SOCIOLOGIA    LITERATURA  GEOGRAFIA   RELIGIAO    ARTES"
    echo "FISICA        QUIMICA     QUIMICA     PORTUGUES   FILOSOFIA"
    echo "FISICA        MATEMATICA  QUIMICA     BIOLOGIA    MATEMATICA"
    echo "MATEMATICA    REDACAO     ED.FISICA   FISICA                "
    
}

calendarioProvas () {

    clear
    echo " SEGUNDA       TERÇA      QUARTA       QUINTA      SEXTA"
    echo "==========================================================="
    echo " FISICA       QUIMICA    GEOGRAFIA     BIOLOGIA   MATEMATICA"
    echo " HISTORIA     RELIGIAO   SOCIOLOGIA    ESPANHOL    ARTES"
    echo " INGLES      LITERATURA   REDACAO      PORTUGUES  FILOSOFIA"
}





while [ $MENUOPCAO != "s" ]
do
    menu
    case $MENUOPCAO in
        1) 
            horarios
            echo ""
            read -p "(sair/s): " $MENU2
            if [ $MENU2 = 's' || $MENU2 = 'sair' ]
            then
                continue
            fi
            
        ;;

        2) 
            calendarioProvas
            echo ""
            read -p "(sair/s): " $MENU2
            if [ $MENU2 = 's' || $MENU2 = 'sair' ]
            then
                continue
            fi
        ;;
    esac
done