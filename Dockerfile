# Base image
FROM node:18-alpine

#Set working directory to /app
WORKDIR /app


#Set PATH /app/node_modules/.bin
ENV PATH /app/node_modules/.bin:$PATH


#Copy package.json in the image
COPY package.json ./


#Run npm install command
RUN npm install


#Copy the app
COPY . ./

#Start the app
CMD ["node", "start"]

EXPOSE 3000