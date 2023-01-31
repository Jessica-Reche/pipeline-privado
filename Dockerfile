# Use a base image of Node.js
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Specify the command to run the app
CMD [ "npm", "start" ]
