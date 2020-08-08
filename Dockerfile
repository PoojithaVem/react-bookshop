# Pull from a base image
FROM node:12-alpine

# Copy the files from the current directory to app/
COPY . app/

# Use app/ as the working directory
WORKDIR app/

# Install dependencies (npm ci is similar to npm i, but for automated builds)
RUN npm ci --only-production

# Build production client side React application
RUN npm run build

# Listen on the specified port
EXPOSE 8080

# Set Node server
ENTRYPOINT npm run start


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
