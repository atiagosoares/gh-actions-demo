# Simple flask app for ECS fargate deployment
FROM python:3.9-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 80
CMD ["python", "app.py"]