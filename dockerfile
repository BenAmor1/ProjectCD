FROM nginx:alpine
copy ./dist/CD_Project /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "deamon off;"]
