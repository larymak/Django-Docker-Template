FROM python:3.9

# COPY Django Project folder and requirements.txt into our working directory
COPY CmsBlog  /usr/local/educative/CmsBlog
COPY requirements.txt  /usr/local/educative/

# install python 3 and pip
RUN apt-get update
RUN apt-get install python3 -y
RUN apt install python3-pip -y && pip3 install --upgrade pip

# install Django dependencies from our requirements file
RUN cd /usr/local/educative && pip install -r requirements.txt 
