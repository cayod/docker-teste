# syntax=docker/dockerfile:1

#Para usar a imagem de python do docker
FROM python:3.8-slim-buster

#Criar um diretório chamado /teste
WORKDIR /teste

#Copiar o arquivo requirements.txt como requirements.txt para dentro da imagem e rodar a linha do pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

#Copiar tudo desse arquivo para a imagem
COPY . .
