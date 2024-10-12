# Step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt file into the container
COPY requirements.txt requirements.txt

# Step 4: Install the required Python packages inside the container
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the current directory contents into the container at /app
COPY . .

# Step 6: Set environment variables (Optional: adjust based on your application)
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Step 7: Expose the port Flask will use
EXPOSE 5000

# Step 8: Define the command to run the application
CMD ["flask", "run"]
