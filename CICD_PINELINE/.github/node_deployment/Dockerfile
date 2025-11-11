# Use official Node.js image as base image
FROM node:16

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port (if your app listens on port 3000)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
