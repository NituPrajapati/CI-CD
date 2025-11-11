
# Use official Python image
FROM python:3.13

# Set working directory inside container
WORKDIR /app

# Copy dependency file first (for caching efficiency)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirement.txt

# Copy rest of the project files
COPY . .

# Expose port (Flask default or your app’s port)
EXPOSE 8080

# Command to run the app
CMD ["python", "app.py"]
