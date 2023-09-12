FROM python:3
WORKDIR /megano/
COPY requirements/base.txt requirements/base.txt
RUN pip install --upgrade setuptools
RUN pip install -r requirements/base.txt
RUN chmod 755 .
COPY . .

