# Usa a imagem oficial do Node.js como base
FROM node:14

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências da aplicação
RUN npm install

# Copia o restante dos arquivos da aplicação para o diretório de trabalho
COPY . .

# Expõe a porta 3000, que é a porta em que a aplicação está escutando
EXPOSE 3000:3000

# Define o comando para iniciar a aplicação
CMD [ "node", "index.js" ]