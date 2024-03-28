# menentukan Node.js versi 21 (Alpine Linux) sebagai base image
FROM node:21-alpine

# menentukan working directory container pada /app
WORKDIR /app

# menyalin source code ke working directory di container
COPY . .

# menginstal dependencies
RUN npm install

# mengekspos port yang digunakan aplikasi yaitu 3001
EXPOSE 3001

# menjalankan server saat container diluncurkan
CMD ["npm", "start"]