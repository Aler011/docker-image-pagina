# Usa la imagen base de NGINX
FROM nginx:latest

# Copia el archivo index.html
COPY mi-perfil-profesional.html /usr/share/nginx/html/

# Copia la carpeta img con todas sus imágenes
COPY img /usr/share/nginx/html/img

# Copiar la configuración personalizada de NGINX
COPY default.conf /etc/nginx/conf.d/default.conf

# Expone el puerto 80 para acceso HTTP
EXPOSE 80

# Comando por defecto para iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]