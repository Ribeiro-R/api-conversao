FROM node:14.16.1-alpine3.13
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "index.js"]
# docker image build -t namespace/api-conversao:v1
# docker container run -d -p 8080:8080 namespace/api-conversao:v1