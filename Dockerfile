#Imagem base
FROM ubuntu
#Comando a ser executado enquanto estar criando a imagem
RUN apt update
RUN apt install wget git figlet apache2 -y
RUN apt clean
#Copiar arquivos para o container
COPY hosts /tmp/
COPY index.html /var/www/html/
CMD httpd -D foreground
