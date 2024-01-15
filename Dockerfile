FROM behren/machina-base-alpine:latest

COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt
RUN rm /tmp/requirements.txt

COPY JarAnalyzer.json /schemas/

COPY src /machina/src
