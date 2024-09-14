# Base image for Node.js
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all other app files
COPY . .

# Expose the port that your app will run on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]