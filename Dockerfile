# Use the official Python image from the Docker Hub
FROM python:3.11-alpine

WORKDIR /usr/src/app

COPY book_catalog/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY book_catalog/ ./

# Expose the port the FastAPI application will run on
EXPOSE 3010

# Run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "3010"]
