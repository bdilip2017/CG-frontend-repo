# Frontend Dockerfile
# Step 1: Build the React application
FROM node:16 AS build
WORKDIR /app

# Copy package.json and package-lock.json, then install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all source files and build the application
COPY src ./src
COPY webpack.config.js ./
RUN npm run build

# Step 2: Serve the app with NGINX
FROM nginx:alpine
# Copy the built files from the previous stage to NGINX's default directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80 to serve the app
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

