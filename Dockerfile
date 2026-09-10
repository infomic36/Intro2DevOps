# Setup base image
FROM ubuntu:18.04
# Define variables
LABEL maintainer=Guillaume_HOMBERG
# Declare ports listening in the container
EXPOSE 80
# Update package definition
RUN apt-get update
# Install nginx
RUN apt-get install -y nginx
# Disable daemon feature
RUN echo “daemon off;” >> /etc/nginx/nginx.conf
# Declare container startup command and options
CMD [“nginx”]