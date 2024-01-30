FROM node:12.2.0-alpine
WORKDIR /src/App
COPY . .
RUN npm install
EXPOSE 80
CMD ["node","/src/App.js"]

