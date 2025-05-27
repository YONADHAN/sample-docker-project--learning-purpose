# Use an official nginx image as the base
FROM nginx:alpine

# Copy custom static files to nginx's public folder
COPY . /usr/share/nginx/html

# Expose port 80 (not required, but good practice)
EXPOSE 80
