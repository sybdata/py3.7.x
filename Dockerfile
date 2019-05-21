FROM python:3.8-rc-alpine3.9

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
		&& apk add --no-cache nano \
	        && pip install setuptools cffi 'cython>=0.29' git+git://github.com/gevent/gevent.git#egg=gevent \
		&& pip install --upgrade psutil \
		&& apk del --purge .build-deps \
	        \
	        && find /usr/local -depth \
		\( \
			\( -type d -a \( -name test -o -name tests \) \) \
			-o \
			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \
		\) -exec rm -rf '{}' + \
	       && rm -rf /usr/src/python 
		
		
