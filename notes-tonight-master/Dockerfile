# Use the official image as a parent image.
FROM node:latest

# Set NODE_ENV to production, to improve performance
ENV NODE_ENV=production

# Set the working directory.
WORKDIR /app

# Copy the npm package files from host to current location.
COPY ["package.json", "package-lock.json*", "./"]

# Run the npm command inside the image filesystem.
RUN npm install

# Copy the rest of the app source code from host to the image filesystem.
COPY . .

# Expose the port defined within the application.
EXPOSE 3000

# Start the application server.
CMD [ "node", "app.js" ]