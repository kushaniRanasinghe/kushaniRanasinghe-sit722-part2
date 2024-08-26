# Use the official Python image from the Docker Hub
FROM python:3.11-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements.txt file from the book_catalog directory to install dependencies
COPY book_catalog/requirements.txt ./

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application source code to the container
COPY book_catalog/ ./

# Expose the port the application runs on
EXPOSE 3000

# Command to run the application
CMD ["python", "main.py"]
