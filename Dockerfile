FROM python:rc-alpine

RUN apk add --no-cache nano \
    && pip install --upgradegevent --upgrade \
    && pip install --upgrade psutil 
		

		
		
