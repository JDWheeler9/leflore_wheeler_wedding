# Use the official Nginx image
FROM nginx:alpine

# copy nginx conf into container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# copy local files (the website) into container
COPY . /usr/share/nginx/html

# run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]