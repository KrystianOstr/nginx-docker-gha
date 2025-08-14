FROM nginx:alpine

COPY ./public /usr/share/nginx/html

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -qO- http://localhost/health > /dev/null || exit 1

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
