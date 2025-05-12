# Use an official base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies (if any)
RUN pip install -r requirements.txt

# Set default command
CMD ["python", "app.py"]
