#!/bin/bash

echo -e  '1):Anote em formato de comentário, os comandos utilizados para a realização de cada tarefa apresentada abaixo:  \na.Exibir o conteúdo de echo.txt sem a linha de cabeçalho (primeira):'
sed '1,2d;9d' echo.txt
echo ""
echo 'b. Exibir o conteúdo de echo.txt classificado pelo nome (não exibir a primeira linha):'
(sed '1,2d;9d' echo.txt| sort)
echo ""
echo 'c. Exibir apenas linhas que contenham *John*:'
grep John echo.txt
echo ""
echo 'd. Exibir apenas linhas que não contenham *John*:'
grep -v John echo.txt
echo ""
echo 'e. Exibir apenas linhas que contenham palavras de 4 letras começando com *J*:'
grep -w 'J...' echo.txt
echo ""
echo 'f. Ordenar as linhas pela idade:'
(sed '1,2d;9d' echo.txt| sort -t, -n -k4)
echo ""
echo 'g. Descobrir a pessoa mais velha e mais jovem no dataset:'
echo ""
echo 'Pessoa mais velha:'
(sed '1,2d;9d' echo.txt| sort -t, -n -k4| tail -1)
echo ""
echo 'Pessoa mais nova:'
(sed '1,2d;9d' echo.txt| sort -t, -n -k4| head -1)
echo ""
echo 'h. Listar as cidades presentes no dataset:'
(sed '1,2d;9d' echo.txt| cut -d ',' -f6| uniq)
echo :""
echo 'i. Encontrar a pessoa mais velha que mora em Nova Iorque.'
(grep 'Nova Iorque' echo.txt| sort -t, -n -r -k4| head -1)


echo ""
echo '2. Apresente as informações para:'
echo 'a. Quantidade de linhas do arquivo echo.txt'
echo ""
echo "$(wc -l echo.txt|cut -d 'e' -f1)linhas"
echo 'b. Quantidade de palavras:'
echo "$(wc -w echo.txt|cut -d 'e' -f1)palavras"
echo ""
echo 'c. Quantidade de bytes:'
echo "$(wc -c echo.txt|cut -d 'e' -f1)bytes"



### Trabalhando com arquivos de texto
#```
#primeiro, último, meio, idade, sexo, cidade
#Jane, Frost, G, 23, F, Nova Iorque
#John, Mundy, F, 25, M, Los Angeles
#Bob, Evans, H, 57, M, Nova Iorque
#John, Smith, M, 4, M, Chicago
#James, Williams, R, 100, M, Chicago
#Mary, Brown, H, 45, F, Dallas
#```

#1. Anote em formato de comentário, os comandos utilizados para a realização de cada tarefa apresentada abaixo:
#
#a. Exibir o conteúdo de echo.txt sem a linha de cabeçalho (primeira);
#b. Exibir o conteúdo de echo.txt classificado pelo nome (não exibir a primeira linha);
#c. Exibir apenas linhas que contenham *John*;
#d. Exibir apenas linhas que não contenham *John*;
#e. Exibir apenas linhas que contenham palavras de 4 letras começando com *J*
#f. Ordenar as linhas pela idade;
#g. Descobrir a pessoa mais velha e mais jovem no dataset;
#h. Listar as cidades presentes no dataset;
#i. Encontrar a pessoa mais velha que mora em Nova Iorque.
#
#2. Apresente as informações para:
#
#a. Quantidade de linhas do arquivo echo.txt;
#b. Quantidade de palavras;
#c. Quantidade de bytes.
#
#3. Crie um script de log que apresente:
#
#a. O diretório corrente;
#b. Seu nome completo e sua idade;
#c. Momento de execução do arquivo
#d. Grave uma frase que você acredita ser importante (rs)
