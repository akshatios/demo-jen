FROM python:3.9-slim

WORKDIR /app

COPY . .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install django

# Run Django development server on port 8000, exposed to the host
CMD ["python", "todoApp/manage.py", "runserver", "0.0.0.0:8000"]
