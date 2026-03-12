FROM node:lts-buster

# Working directory
WORKDIR /app

# Copy package.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of project
COPY . .

# Use Render's PORT environment variable
EXPOSE $PORT

# Start the app
CMD ["npm", "start"]
