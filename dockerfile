FROM nginx:alpine

WORKDIR /var/lib/jenkins/workspace/CD_Project

copy .dist/CD-Project  /usr/share/nginx/html

EXPOSE 4200

CMD ["nginx", "-g", "deamon off;"]
