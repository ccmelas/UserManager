#use the latest LTS version carbon of node from docker hub
FROM node:carbon

#create app working directory inside docker image
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

#install app dependencies
RUN npm install

# Bundle app source code
COPY . .

# EXPOSE app on PORT 3000
EXPOSE 3000

# Define command to run app
CMD [ "npm", "start" ]
