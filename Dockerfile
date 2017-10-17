FROM alpine:3.5
MAINTAINER Gaurish Sharma<contact@gaurishsharma.com>
ADD . /app
WORKDIR '/app'
RUN ["/app/setup.sh"]
EXPOSE 4567
CMD ["/usr/bin/bundle","exec", "ruby", "app.rb", '-a', '0.0.0.0']
