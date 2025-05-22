FROM node:18-alpine      # Tiny Node base image
WORKDIR /app             # Set working dir
COPY package.json ./     # Copy deps list
RUN npm install          # Install dependencies
COPY server.js ./        # Copy app code
EXPOSE 3000              # Tell Docker the container listens on 3000
CMD ["npm", "start"]     # Command to run your app

