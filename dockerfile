FROM ubuntu

WORKDIR /app

COPY requirements.txt /app/
COPY devops /app/devops

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

# Use SHELL form to ensure bash behavior
SHELL ["/bin/bash", "-c"]

# Create virtual environment and install requirements
RUN python3 -m venv venv1 && \
    source venv1/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

# Set working directory to Django project
WORKDIR /app/devops

EXPOSE 8000

# Run server correctly from project directory using virtual environment
CMD /app/venv1/bin/python3 manage.py runserver 0.0.0.0:8000
