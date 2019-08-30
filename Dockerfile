FROM nginx:alpine

EXPOSE 80

ENV X_REAL_IP 123.123.123.123
ENV SERVER_IP 123.123.123.123

RUN apk add --no-cache gomplate

COPY *.tmpl /templates/
COPY bootstrap /usr/local/bin/

CMD ["bootstrap"]
