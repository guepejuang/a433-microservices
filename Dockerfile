# 1. Menggunakan base image Node.js versi 14
FROM node:14

# 2. Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app

# 3. Menyalin seluruh source code ke working directory di container (/app)
COPY . .

# 4. Menentukan aplikasi berjalan pada production mode dan set DB_HOST menjadi item-db
ENV NODE_ENV=production DB_HOST=item-db

# 5. Install dependencies untuk production dan melakukan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# 6. Mengekspose  aplikasi melalui port 8080
EXPOSE 8080

# 7. Menjalankan server
CMD [ "npm", "start" ]