# Use an official Nginx image as a base, explicitly requesting the ARM64 platform
FROM --platform=linux/arm64 nginx:alpine

# Copy your website files into the Nginx default public directory
COPY . /usr/share/nginx/html

# Expose port 80 (Nginx default)
EXPOSE 80

# Command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]