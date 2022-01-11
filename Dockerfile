FROM alpine:latest
LABEL Maintainer="sefacanacar"
WORKDIR /app
COPY . /app

RUN apk add --no-cache python3 py3-pip py3-mysqlclient
RUN pip install flask gunicorn
ENTRYPOINT ["./gunicorn_starter.sh"]
#CMD [ "python3", "./my_python_app.py"]
