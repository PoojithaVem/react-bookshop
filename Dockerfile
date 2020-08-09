# Docker Image which is used as foundation to create
# a custom Docker Image with this Dockerfile
FROM node:14
 
# A directory within the virtualized Docker environment
# Becomes more relevant when using Docker Compose later
WORKDIR /usr/src/app
 
# Copies package.json and package-lock.json to Docker environment
COPY package*.json ./
 
# Installs all node packages
RUN npm install
RUN npm audit fix

# Copies everything over to Docker environment
COPY . .
 
# Uses port which is used by the actual application
EXPOSE 3000
 
# Finally runs the application
CMD [ "npm", "start" ]

# Pull from a base image
#FROM node:12-alpine

# Copy the files from the current directory to app/
#COPY . app/

# Use app/ as the working directory
#WORKDIR app/

# Install dependencies (npm ci is similar to npm i, but for automated builds)
#RUN npm ci --only-production

# Build production client side React application
#RUN npm run build

# Listen on the specified port
#EXPOSE 8080

# Set Node server
#ENTRYPOINT npm run start


#FROM node:alpine

#WORKDIR '/app'

#COPY package.json .
#RUN npm install
#COPY . .
#CMD ["npm", "start"]





#FROM node:latest

# Create app directory
#WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./
#RUN npm cache clean -f
#RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
#COPY . .

#EXPOSE 8080

# start app
#CMD ["npm", "start"]

#CMD [ "node", "server.js" ]
