ARG BASE_IMAGE
FROM ${BASE_IMAGE}

# Copy Hugo output
COPY public/ /usr/share/nginx/html/

# Override nginx config (base image doesn't include conf.d/)
COPY nginx.conf /etc/nginx/nginx.conf
