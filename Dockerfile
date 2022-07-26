FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# COpy source code to working directory 
COPY . app.py /app/

# Install packages from requirements.txt file 
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt