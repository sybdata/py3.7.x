FROM python:3-alpine

RUN apk add --no-cache \
    build-base py-psutil \
    && pip install gevent==1.4.0 \
    && apk del build-base
		

		
		
