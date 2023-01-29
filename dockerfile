FROM nginx:alpine

# Copy the contents of the HTML application to the Nginx default directory
COPY . /usr/share/nginx/html

# Expose port 80 for the Nginx server to listen on
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
docker build -t my-html-app .
