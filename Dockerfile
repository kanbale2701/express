# Use the official Node.js image.
FROM node:18.19.1

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
COPY package*.json ./

# Install dependencies.
RUN npm install 

# Copy the local code to the container image.
COPY . .

# Set the working directory for the application code
WORKDIR /usr/src/app/examples/hello-world

# Set the environment variable to staging.
ENV NODE_ENV=staging

# Run the web service on container startup.
CMD [ "node", "index.js" ]

# Inform Docker that the container listens on port 8080.
EXPOSE 8080

