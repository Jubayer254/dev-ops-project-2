# Use official Node.js runtime as base image
FROM node:22-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of application code
COPY . .

# Expose port 5000 (the actual port your Express app uses)
EXPOSE 5000

# Command to run the application
CMD ["npm", "start"]