FROM python:rc-alpine

RUN apk add --no-cache nano git \
    && pip install setuptools cffi 'cython>=0.29' git+git://github.com/gevent/gevent.git#egg=gevent \
    && pip install --upgrade psutil 
		

		
		
