FROM python:latest
WORKDIR /app
RUN sudo yum update
RUN sudo yum install python -y
ADD ankit-app.py /app
CMD ["python", "ankit-app.py"]
