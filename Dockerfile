# Specify the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the source code to the container
COPY . .

#Create a Docker volume
RUN npm run build

# Expose port 80
EXPOSE 3000

# Start the app
CMD ["npm", "start"]


