# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

#Install Flask
RUN pip install --trusted-host pypi.python.org Flask gunicorn

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME counter-service

# Run counter_service.py when the container launches
CMD ["python", "counter_service.py"]