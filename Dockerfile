FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:8000"]