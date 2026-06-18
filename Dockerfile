# syntax=docker/dockerfile:1.7

FROM nginx:stable-alpine

WORKDIR /usr/share/nginx/html

COPY index.html style.css app.js ./

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q --spider http://127.0.0.1/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
