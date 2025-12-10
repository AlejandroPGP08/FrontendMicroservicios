# Imagen ligera de nginx
FROM nginx:alpine

# Elimina la página por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copia tu index.html al servidor web
COPY index.html /usr/share/nginx/html/

# (Opcional) Si tienes más archivos estáticos:
# COPY . /usr/share/nginx/html/

# Expone el puerto por defecto de nginx
EXPOSE 80

# Inicia nginx
CMD ["nginx", "-g", "daemon off;"]
