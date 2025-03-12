# Use the official Node.js LTS image
FROM node:lts

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install -g npm@11.2.0

# Copy the rest of the application
COPY . .

# Expose the application port
EXPOSE 3000

# Command to run the app
CMD ["node", "hello.js"]