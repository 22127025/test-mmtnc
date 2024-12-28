FROM node:latest
WORKDIR /usr/app
COPY package.json ./
RUN nmp install
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]