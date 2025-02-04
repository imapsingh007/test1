# Use an official Node.js 18 runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 80 for the app to be accessible from outside the container
EXPOSE 80

# Command to run the app
CMD ["node", "app/app.js"]


