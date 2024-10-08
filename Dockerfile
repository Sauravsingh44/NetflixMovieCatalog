# Use the official Python image as the base image
FROM python:3.12.6

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on (assuming it's a Flask app running on port 5000)
EXPOSE 5000

# Define the command to run the app (this example assumes you are using Flask)
CMD ["python", "app.py"]
