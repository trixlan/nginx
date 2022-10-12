FROM nginxinc/nginx-unprivileged
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

RUN touch /run/nginx.pid \
 && chown -R api-gatway:api-gatway /run/nginx.pid /cache/nginx
