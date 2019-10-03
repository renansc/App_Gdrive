#atualizando lista no Gdrive
echo "Atualizando Lista";
`sudo ~/gdrive_renan/./gdrive list -m 200 --no-header > ~/gdrive_renan/lista_drive.txt`;

#busca qual o arquivo desejado
echo "recebeu por parametro $1"

#obtendo id do arquivo
echo "Obtendo id";

id_arq=`cat -n ~/gdrive_renan/lista_drive.txt|grep $1|cut -c8-40`;
echo "Arquivo Encontrado: $1";
echo "id: $id_arq";

#deletando arquivo
echo "Deletando Arquivo:$1 no Pc";
echo `sudo rm -fr $1`;

#baixando arquivo novo
echo "Baixando Arquivo:$id_arq do Drive para o Pc";
echo `sudo ~/gdrive_renan/./gdrive download --recursive $id_arq`;

echo "Finalizando ...!";
