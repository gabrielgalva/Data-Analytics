FROM python:3.8

RUN pip install boto3

COPY scriptTwo.py /app/scriptTwo.py
COPY movies.csv /app/
COPY series.csv /app/

WORKDIR /app

CMD ["python", "scriptTwo.py"]
