# Use an official NGINX image
FROM nginx:alpine

# Copy the index.html to NGINX's default directory
COPY index.html /var/www/html/index.html

# Expose port 8000
EXPOSE 8000

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
