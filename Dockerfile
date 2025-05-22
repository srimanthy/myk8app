# Dockerfile
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy app source
COPY server.js ./

# Expose the port the app runs on
EXPOSE 3000

# Run the app
CMD ["npm", "start"]

