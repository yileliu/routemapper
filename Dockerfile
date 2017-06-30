FROM nginx

RUN apt-get update && apt-get install -y vim
RUN rm /etc/nginx/conf.d/default.conf
RUN echo "34.202.77.194   dev.api.quantum.autodesk.com" >> /etc/hosts

COPY nginx.conf /etc/nginx/conf.d/default.conf
