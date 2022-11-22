FROM python:3
RUN pip install flask
WORKDIR /app
ADD app.py .
CMD ["python", "app.py"]