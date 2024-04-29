FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY projectDD/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY projectDD/ .

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "projectDD.wsgi:application"]

