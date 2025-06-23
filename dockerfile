# Use official Python image
FROM python:3.10-slim

# Install system dependencies for psycopg2
RUN apt-get update \
  && apt-get install -y gcc libpq-dev

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy app code
COPY . .

# Use gunicorn for production-ready server
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

