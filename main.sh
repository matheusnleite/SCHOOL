#!/bin/bash
MENUOPCAO=0
MENU2=x

menu () {
    
    echo "          =======         "
    echo "          = CAU =         "
    echo "          =======         "
    echo ""
    echo "Selecione uma opcao: "
    echo "1 - Horarios"
    echo "2 - Provas"
    echo "3 - Anotações"
    echo "4 - Data"
    echo "5 - Médias"
    echo "S - SAIR"

    read -p "Opcao: " MENUOPCAO

    
}

horarios () {
    clear
    echo " SEGUNDA       TERÇA      QUARTA       QUINTA      SEXTA"
    echo "==========================================================="
    echo "RELIGIAO      INGLES      INGLES      PORTUGUES   REDACAO"
    echo "MATEMATICA    PORTUGUES   CAPELA      ESPANHOL    BIOLOGIA"
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

media () {
    clear
    
    #Variaveis Materias
    MATEMATICA=0
    RELIGIAO=0
    BIOLOGIA=0
    SOCIOLOGIA=0
    FISICA=0
    INGLES=0
    PORTUGUES=0
    HISTORIA=0
    LITERATURA=0
    QUIMICA=0
    REDACAO=0
    GEOGRAFIA=0
    EDFISICA=0
    ESPANHOL=0
    ARTES=0
    FILOSOFIA=0


    echo "1 - Mostrar médias salvas"
    echo "2 - Calcular novas médias"
    read -p "Opcao: " MENU3

    if [ $MENU3 = '1' ]
    then
        clear
        echo "                    MEDIAS                "
        echo "============================================="
        echo "|                     |                     |"
        echo "|     Matematica: $MATEMATICA   |   Religiao:   $RELIGIAO     |"
        echo "|     Biologia:   $BIOLOGIA   |   Sociologia: $SOCIOLOGIA     |"
        echo "|     Fisica:     $FISICA   |   Ingles:     $INGLES     |"
        echo "|     Portugues:  $PORTUGUES   |   Historia:   $HISTORIA     |"
        echo "|     Literatura: $LITERATURA   |   Quimica:    $QUIMICA     |"
        echo "|     Redacao:    $REDACAO   |   Geografia:  $GEOGRAFIA     |"
        echo "|     Ed. Fisica: $EDFISICA   |   Espanhol:   $ESPANHOL     |"
        echo "|     Artes:      $ARTES   |   Filosofia:  $FILOSOFIA     |"
        echo "============================================="
        

    fi

}

#anotacoes () {
        #echo $(vim anotacoes.txt)
#}

#tarefa () {
#        read -p "Quantas tarefas deseja criar?" QTDTAREFAS
#
#       for sequencia in $(seq 1 $QTDTAREFAS)
#        do
#            
#        done
#}





while [ $MENUOPCAO != "s" ]
do
    clear
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

#        3) 
#            anotacoes
#        ;;

        4) 
            clear
            echo "$(date)"
            sleep 2
        ;;

        5) 
            media
            read -p "(sair/s): " $MENU2
            if [ $MENU2 = 's' || $MENU2 = 'sair' ]
            then
                continue
            fi
        ;;

        s) 
            echo "Saindo..."
            sleep 1
        ;;

        *) 
            echo "Opção inválida!"
            continue
        ;;
    esac
done