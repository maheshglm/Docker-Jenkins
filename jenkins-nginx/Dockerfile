FROM nginx:1.17.7-alpine
LABEL maintainer="maheshglm@gmail.com"

#Cleanup the default NGINX configuration file we don’t need
RUN rm /etc/nginx/conf.d/default.conf

#Add our configuration files 
COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]