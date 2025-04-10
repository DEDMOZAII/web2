FROM python:3.12-slim

WORKDIR /app

COPY . /app

RUN pip install poetry

RUN poetry lock  

RUN poetry install --no-interaction --no-root

CMD ["python", "web1.py"]

