#
FROM python:stretch

RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":80", "main:APP"]
