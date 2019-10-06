FROM python:3.7.3-stretch

#RUN apt-get update && apt-get install -y git
## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Step 3:
# Install packages from requirements.txt
RUN pip install --upgrade pip==19.2.3 &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# hadolint ignore=DL3013

## Step 4:
#Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
