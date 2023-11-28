FROM python:3.9
LABEL authors="constantinknapp"

# WORKDIR /usr/src/

# Set the working directory to /app
WORKDIR /app

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8501

# CMD specifies the command to run on container start
CMD ["streamlit", "run", "main.py"]

