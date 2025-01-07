# Use the official Node.js image as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Install Expo CLI globally
RUN npm install -g expo-cli

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the Expo server uses
EXPOSE 19000

# Start the Expo server
CMD ["npm", "start"]