# Step 1: Choose a lightweight base image
FROM python:3.11-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy dependency file first (Docker caches this layer)
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 5000

# Step 7: Define the command to run the application
CMD ["python", "app.py"]