# Use the official Node.js 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Expose port 3001
EXPOSE 3001

# Set the default command to run the Bash script
CMD ["bash", "st.sh"]
