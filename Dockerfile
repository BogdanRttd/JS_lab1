FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY public/index.html /var/www/html/
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
