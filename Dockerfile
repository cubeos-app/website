ARG BASE_IMAGE
FROM ${BASE_IMAGE}

# Copy Hugo output
COPY public/ /usr/share/nginx/html/

# Copy content-negotiation nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf
