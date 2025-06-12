FROM node:18.18.1-alpine
RUN npm install -g npm@10.2.0
RUN mkdir -p /var/www/gateway
WORKDIR /var/www/gateway
ADD . /var/www/gateway
RUN npm install
RUN npm run build
EXPOSE 8000 
CMD npm run start:prod
