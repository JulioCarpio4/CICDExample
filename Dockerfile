FROM nginx:stable
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN mkdir /data && mkdir /data/images 

COPY ./cubsWorldSeries2016.jpg /data/images

CMD ["nginx", "-g", "daemon off;"]