# Use an official Nginx image
FROM nginx:alpine

# Copy your website files into the Nginx default public directory
COPY . /usr/share/nginx/html

# Expose port 80 (Nginx default)
EXPOSE 8080

# Command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]