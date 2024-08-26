# Dockerfile for book_catalog microservice
# Use the official Python image from the Docker Hub
FROM python:3.11-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements.txt file to install dependencies
COPY requirements.txt ./

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application source code to the container
COPY . .

# Expose the port the application runs on
EXPOSE 3000

# Command to run the application
CMD ["python", "main.py"]
