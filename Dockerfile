FROM python:latest
WORKDIR /app
RUN sudo yum update && sudo yum install python -y
COPY ankit.py /app
CMD ["python", "ankit.py"]
