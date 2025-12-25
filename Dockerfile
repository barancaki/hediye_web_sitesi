FROM nginx:alpine

# Nginx çalışma dizini
WORKDIR /usr/share/nginx/html

# Tüm dosyaları kopyala (index.html ve images klasörü)
COPY . .

# Nginx konfigürasyonunu kopyala
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 80 portunu aç
EXPOSE 80

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"]
