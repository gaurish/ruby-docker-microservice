 ## A Docker Container written in Ruby

 Uses:

 1. Alpine as base image. Base image is 5MB only vs 250mb of Ubuntu. 
 2. Sinatra 2
 3. Sidekiq & Redis to showcase that we can build gems with native extentions without a problem. you can remove them, if you do not need it. it will work fine without it.  

 ### To Build the image

 ```
 $ git clone https://github.com/gaurish/ruby-docker-microservice.git
 $ cd ruby-docker-microservice
 $ docker build -t sinatra .
 Sending build context to Docker daemon 67.58 kB
Step 1/7 : FROM alpine:3.5
 ---> 37c7be7a096b
Step 2/7 : MAINTAINER Gaurish Sharma<contact@gaurishsharma.com>
 ---> Running in 92f4efea4a11
 ---> 6b5cc8e7c0f9
Removing intermediate container 92f4efea4a11
Step 3/7 : ADD . /app
 ---> 26f250598551
Removing intermediate container d575af826c0a
Step 4/7 : WORKDIR '/app'
 ---> 5fb05c57a1ea
Removing intermediate container bd530b5db2e2
Step 5/7 : RUN /app/setup.sh
 ---> Running in f119cd03a5ff
fetch http://dl-cdn.alpinelinux.org/alpine/v3.5/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.5/community/x86_64/APKINDEX.tar.gz
v3.5.2-195-gddfa263b72 [http://dl-cdn.alpinelinux.org/alpine/v3.5/main]
v3.5.2-177-gfdf1237bb5 [http://dl-cdn.alpinelinux.org/alpine/v3.5/community]
OK: 7963 distinct packages available
OK: 4 MiB in 11 packages
fetch http://dl-cdn.alpinelinux.org/alpine/v3.5/main/x86_64/APKINDEX.tar.gz
fetch http://dl-cdn.alpinelinux.org/alpine/v3.5/community/x86_64/APKINDEX.tar.gz
(1/71) Installing fakeroot (1.21-r1)
(2/71) Installing sudo (1.8.19_p1-r0)
(3/71) Installing libcap (2.25-r1)
(4/71) Installing pax-utils (1.1.6-r0)
(5/71) Installing libressl (2.4.4-r0)
(6/71) Installing libattr (2.4.47-r4)
(7/71) Installing attr (2.4.47-r4)
(8/71) Installing tar (1.29-r1)
(9/71) Installing pkgconf (1.0.2-r0)
(10/71) Installing patch (2.7.5-r1)
(11/71) Installing ca-certificates (20161130-r1)
(12/71) Installing libssh2 (1.7.0-r2)
(13/71) Installing libcurl (7.56.0-r0)
(14/71) Installing curl (7.56.0-r0)
(15/71) Installing abuild (2.29.0-r2)
Executing abuild-2.29.0-r2.pre-install
(16/71) Installing binutils-libs (2.27-r1)
(17/71) Installing binutils (2.27-r1)
(18/71) Installing gmp (6.1.1-r0)
(19/71) Installing isl (0.17.1-r0)
(20/71) Installing libgomp (6.2.1-r1)
(21/71) Installing libatomic (6.2.1-r1)
(22/71) Installing libgcc (6.2.1-r1)
(23/71) Installing mpfr3 (3.1.5-r0)
(24/71) Installing mpc1 (1.0.3-r0)
(25/71) Installing libstdc++ (6.2.1-r1)
(26/71) Installing gcc (6.2.1-r1)
(27/71) Installing make (4.2.1-r0)
(28/71) Installing musl-dev (1.1.15-r7)
(29/71) Installing libc-dev (0.7-r1)
(30/71) Installing fortify-headers (0.8-r0)
(31/71) Installing g++ (6.2.1-r1)
(32/71) Installing build-base (0.4-r1)
(33/71) Installing expat (2.2.0-r1)
(34/71) Installing pcre (8.39-r0)
(35/71) Installing git (2.11.3-r0)
(36/71) Installing xz-libs (5.2.2-r1)
(37/71) Installing lzo (2.09-r1)
(38/71) Installing squashfs-tools (4.3-r3)
(39/71) Installing libburn (1.4.6-r0)
(40/71) Installing ncurses-terminfo-base (6.0-r8)
(41/71) Installing ncurses-terminfo (6.0-r8)
(42/71) Installing ncurses-libs (6.0-r8)
(43/71) Installing libedit (20150325.3.1-r3)
(44/71) Installing libacl (2.2.52-r2)
(45/71) Installing libisofs (1.4.6-r0)
(46/71) Installing libisoburn (1.4.6-r0)
(47/71) Installing xorriso (1.4.6-r0)
(48/71) Installing acct (6.6.2-r0)
(49/71) Installing lddtree (1.25-r2)
(50/71) Installing libuuid (2.28.2-r1)
(51/71) Installing libblkid (2.28.2-r1)
(52/71) Installing device-mapper-libs (2.02.168-r3)
(53/71) Installing cryptsetup-libs (1.7.2-r1)
(54/71) Installing kmod (23-r1)
(55/71) Installing mkinitfs (3.0.9-r1)
Executing mkinitfs-3.0.9-r1.post-install
(56/71) Installing mtools (4.0.18-r1)
(57/71) Installing alpine-sdk (0.5-r0)
(58/71) Installing zlib-dev (1.2.11-r0)
(59/71) Installing libcrypto1.0 (1.0.2k-r0)
(60/71) Installing libssl1.0 (1.0.2k-r0)
(61/71) Installing openssl-dev (1.0.2k-r0)
(62/71) Installing libffi (3.2.1-r2)
(63/71) Installing gdbm (1.12-r0)
(64/71) Installing readline (6.3.008-r4)
(65/71) Installing yaml (0.1.7-r0)
(66/71) Installing ruby-libs (2.3.5-r0)
(67/71) Installing ruby (2.3.5-r0)
(68/71) Installing libgmpxx (6.1.1-r0)
(69/71) Installing gmp-dev (6.1.1-r0)
(70/71) Installing ruby-dev (2.3.5-r0)
(71/71) Installing ruby-io-console (2.3.5-r0)
Executing busybox-1.25.1-r0.trigger
Executing ca-certificates-20161130-r1.trigger
OK: 233 MiB in 82 packages
Successfully installed bundler-1.15.4
1 gem installed
Don't run Bundler as root. Bundler can ask for sudo if it is needed, and
installing your bundle as root will break this application for all non-root
users on this machine.
Fetching gem metadata from https://rubygems.org/..........
Fetching version metadata from https://rubygems.org/..
Fetching dependency metadata from https://rubygems.org/.
Using bundler 1.15.4
Fetching concurrent-ruby 1.0.5
Fetching connection_pool 2.2.1
Fetching daemons 1.2.4
Installing connection_pool 2.2.1
Fetching eventmachine 1.2.5
Installing daemons 1.2.4
Fetching hiredis 0.6.1
Installing concurrent-ruby 1.0.5
Fetching json 2.0.2
Installing hiredis 0.6.1 with native extensions
Installing eventmachine 1.2.5 with native extensions
Installing json 2.0.2 with native extensions
Fetching mustermann 1.0.1
Installing mustermann 1.0.1
Fetching rack 2.0.3
Installing rack 2.0.3
Fetching redis 3.2.2
Installing redis 3.2.2
Fetching tilt 2.0.8
Installing tilt 2.0.8
Fetching rack-protection 2.0.0
Installing rack-protection 2.0.0
Fetching redis-namespace 1.5.3
Installing redis-namespace 1.5.3
Fetching sidekiq 4.2.10
Installing sidekiq 4.2.10
Fetching sinatra 2.0.0
Installing sinatra 2.0.0
Fetching thin 1.7.2
Installing thin 1.7.2 with native extensions
Bundle complete! 7 Gemfile dependencies, 16 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
 ---> 2983e7afbb77
Removing intermediate container f119cd03a5ff
Step 6/7 : EXPOSE 4567
 ---> Running in 5095e149fe5b
 ---> a4793fcea673
Removing intermediate container 5095e149fe5b
Step 7/7 : CMD /usr/bin/bundle exec ruby app.rb
 ---> Running in 88ac24f3ffe7
 ---> c42b688444d5
Removing intermediate container 88ac24f3ffe7
Successfully built c42b688444d5
```


### To run the container

```
$ docker run -p 80:4567 sinatra
== Sinatra (v2.0.0) has taken the stage on 4567 for production with backup from Thin
117.203.20.79 - - [17/Oct/2017:17:52:19 +0000] "GET / HTTP/1.1" 200 58 0.0061
```

Todo:
1. Split the image into two parts, OnBuild & code
2. Package gems to reduce image building size.
