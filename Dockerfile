FROM nginx:alpine

#WORKDIR /var/lib/jenkins/workspace/CD_Project

copy /var/lib/jenkins/workspace/CD_Project/dist/CD_Project  /usr/share/nginx/html

EXPOSE 4200

CMD ["nginx", "-g", "deamon off;"]
