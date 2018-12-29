FROM python:3.7.2-alpine3.8

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
	        && pip install setuptools cffi 'cython>=0.28' git+git://github.com/gevent/gevent.git#egg=gevent \
		&& pip install --upgrade psutil \
		&& apk del .build-deps 
		
CMD ["python3"]
		
