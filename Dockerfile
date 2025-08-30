FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy only necessary files
COPY src/ ./src/
COPY iris_model.pkl /app/iris_model.pkl

# Expose FastAPI port
EXPOSE 7005

# Run FastAPI app
CMD ["uvicorn", "src.app:app", "--host", "0.0.0.0", "--port", "7005"]
