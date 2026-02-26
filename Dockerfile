# Base image
FROM nginx:alpine

# Default nginx html folder clean karo
RUN rm -rf /usr/share/nginx/html/*

# Apna index.html copy karo container me
COPY index.html /usr/share/nginx/html/

# Port expose karo
EXPOSE 80

# Nginx start
CMD ["nginx", "-g", "daemon off;"]