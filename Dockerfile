FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip
COPY ./ ./app
WORKDIR ./app
RUN pip3 install -r requirements.txt
CMD [ "python3" "app.py" ]