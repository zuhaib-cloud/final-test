# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY app.py .

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable to tell Flask to run in production mode (optional)
ENV FLASK_ENV=production

# Run the application
CMD ["python", "app.py"]
