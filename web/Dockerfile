FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html
COPY roboshop.conf /etc/nginx/conf.d/roboshop.conf
ADD static /usr/share/nginx/html/