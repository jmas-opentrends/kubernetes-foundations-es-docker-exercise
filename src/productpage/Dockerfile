FROM python:3.12.1-slim

ARG FLOOD_FACTOR=0

COPY requirements.txt .
COPY test-requirements.txt .

RUN pip3 install --no-cache-dir --require-hashes -r requirements.txt
RUN pip3 install --no-cache-dir --require-hashes -r test-requirements.txt

COPY productpage.py /opt/microservices/
COPY static/ /opt/microservices/static/
COPY templates/ /opt/microservices/templates/
COPY tests/unit/ /opt/microservices/tests/unit/

WORKDIR /opt/microservices/

USER 1000

EXPOSE 9080
CMD ["python", "-m unittest discover"]

CMD ["gunicorn", "-b", "[::]:9080", "productpage:app -w 8--keep-alive 2 -k gevent"]