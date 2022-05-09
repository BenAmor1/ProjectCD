FROM nginx:alpine

WORKIDIR /var/lib/jenkins/workspace/CD_Project

copy ./dist/CD_Project/*  /usr/share/nginx/html/

EXPOSE 4200

CMD ["nginx", "-g", "deamon off;"]
