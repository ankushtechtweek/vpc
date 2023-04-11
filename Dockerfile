# Pull base image
FROM public.ecr.aws/nginx/nginx:1-alpine-perl

# Dockerfile Maintainer
MAINTAINER Jcbvffr "vdfddfnet.org"

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install --no-install-recommends -y nginx; \
 echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]
