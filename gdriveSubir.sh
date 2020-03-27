#!/bin/bash
echo "Atualizando lista";
`sudo ~/gdrive_renan/./gdrive list -m 150 --no-header > ~/gdrive_renan/lista_drive.txt`;
echo "Atualizada com Sucesso!";

#Subir do  pc para o gdrive 
echo `sudo ~/gdrive_renan/./gdrive upload --recursive $1`;
echo "finalizando script!";



