# Use the official Node.js 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Copy the application code to the working directory
COPY . .

# Run the npm setup script to build your application
RUN npm run setup

# Expose port 3001
EXPOSE 3001

# Define the default command to run when the container starts
CMD ["node", "server/server.js"]
