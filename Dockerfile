# Use the official Python image from the Docker Hub
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Downgrade Werkzeug if necessary
#RUN pip install werkzeug==0.16.1

# Make port 80 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NAME app.py

# Run app.py when the container launches
CMD ["python", "app.py"]

