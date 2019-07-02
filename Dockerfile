FROM python:3-alpine

RUN apk add --no-cache --virtual .build-deps \
bzip2-dev \
coreutils \
dpkg-dev dpkg \
expat-dev \
findutils \
gcc \
gdbm-dev \
libc-dev \
libffi-dev \
libnsl-dev \
libressl-dev \
libtirpc-dev \
linux-headers \
make \
ncurses-dev \
pax-utils \
readline-dev \
sqlite-dev \
tcl-dev \
tk \
git \
tk-dev \
util-linux-dev \
xz-dev \
zlib-dev \
build-base \
&& pip install gevent==1.4.0 \
&& pip install --upgrade psutil \
&& apk del --purge .build-deps build-base
		

		
		
