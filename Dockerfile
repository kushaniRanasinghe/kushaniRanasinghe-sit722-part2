# Use the Python 3.11 image based on Alpine Linux
FROM python:3.11-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the requirements file
COPY book_catalog/requirements.txt ./

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files
COPY book_catalog/ ./

# Expose port 3010
EXPOSE 3010

# Start the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3010"]
