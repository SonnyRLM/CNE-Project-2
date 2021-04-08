FROM python:3.7

# All files in directory
COPY . .

# Install requirements
RUN pip3 install -r requirements.txt

# Port that the container listens on
EXPOSE 5000

# Main process for the container to run on start-up
ENTRYPOINT ["python3", "app.py"]