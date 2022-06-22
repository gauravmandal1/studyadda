FROM python:3.8-alpine
 
ENV PATH="/scripts:${PATH}"
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-chache --virtual .tmp gcc libc-dev linux-headers
RUN pip install -r requirements.txt
