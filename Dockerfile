# Use the official Node.js 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Expose port 3001
EXPOSE 3001

# Define the default command to run when the container starts
CMD ["docker", "run", "-d", "--restart=always", "-p", "3001:3001", "-v", "uptime-kuma:/app/data", "--name", "uptime-kuma", "louislam/uptime-kuma:1"]
