# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory /app
WORKDIR /app

# Menyalin seluruh source code ke working directory
COPY . .

# Menambahkan ENV 
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos ke port 8080
EXPOSE 8080

# Menjalankan server dengan perintah npm start
CMD ["npm", "start"]
