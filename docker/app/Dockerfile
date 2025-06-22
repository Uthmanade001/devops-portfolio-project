# Use official Python image.
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy app code ..
COPY . .

# Use gunicorn for production-ready server
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
