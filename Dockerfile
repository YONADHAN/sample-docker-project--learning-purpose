# # Use an official nginx image as the base
# FROM nginx:alpine

# # Copy custom static files to nginx's public folder
# COPY . /usr/share/nginx/html

# # Expose port 80 (not required, but good practice)
# EXPOSE 80


FROM nginx:alpine
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
