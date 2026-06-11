# Use a stable Node.js LTS image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

# Install dependencies (only production dependencies if you want a slimmer image)
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your Express app runs on (adjust if your server uses a different port)
EXPOSE 3000

# Start the application using the script defined in your package.json
CMD [ "npm", "start" ]
