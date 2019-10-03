#!/bin/bash
echo "Atualizando lista";
`sudo ~/gdrive_renan/./gdrive list -m 200 --no-header > ~/gdrive_renan/lista_drive.txt`;

#atualizar lista de arquivos
echo "buscando $1";

#buscar nome de arquivo recebido por parametro
linha=`cat ~/gdrive_renan/lista_drive.txt|grep $1`;
echo "Encontrado $linha";

#separar o id do arquivo da linha encontrada
id_arq=`cat -n ~/gdrive_renan/lista_drive.txt|grep $1|cut -c8-40`;
echo "Baixando $id_arq";

#baixar do gdrive usando o id encontrado
echo `sudo ~/gdrive_renan/./gdrive download $id_arq --recursive`;
echo "finalizando script!";

