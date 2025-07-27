# Use Node.js official image
FROM node:20.11.1-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all source code
COPY . .

# Expose port 3000 (Express default port)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
