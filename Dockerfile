FROM alpine:3.5
MAINTAINER Gaurish Sharma<contact@gaurishsharma.com>
ADD . /app
WORKDIR '/app'
RUN ["/app/setup.sh"]
EXPOSE 80
CMD ["/usr/bin/bundle","exec", "ruby", "app.rb", '-p', '80', '-a', '0.0.0.0']
