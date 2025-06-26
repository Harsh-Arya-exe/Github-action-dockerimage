# The base python image to start building from
FROM python:3.9-slim

# Setting the working directory inside the container
WORKDIR /app

# Copying everything from the current directory(local host) to the container
COPY . /app

# Install Flask using pip inside the container during the build process
RUN pip install flask

# Document that the app will use port 5000 
EXPOSE 5000

# Run this command when the container starts
CMD ["python", "app.py"]

