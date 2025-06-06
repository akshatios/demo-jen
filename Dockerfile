# Dockerfile

# Base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy project
COPY . /code/

# Collect static files (optional)
RUN python manage.py collectstatic --noinput

# Run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
