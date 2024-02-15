#Base Image
FROM nginx:alpine

RUN mkdir -p /home/src

WORKDIR /home/src

COPY . .
COPY html-docs-hello-world/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
