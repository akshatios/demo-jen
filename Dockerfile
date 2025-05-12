FROM python:3.9-slim

WORKDIR /app

COPY . .

# Comment out or remove if no dependencies
# RUN pip install -r requirements.txt

CMD ["python", "app.py"]
