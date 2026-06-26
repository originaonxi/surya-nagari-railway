FROM nginx:alpine
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/templates/default.conf.template
# Railway injects $PORT at runtime — do NOT hardcode; let envsubst do it
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
