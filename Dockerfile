FROM python:rc-alpine

RUN apk add --no-cache nano python-dev build-base libev \
    && pip install --upgrade gevent \
    && pip install --upgrade psutil 
		

		
		
