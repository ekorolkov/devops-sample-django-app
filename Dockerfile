FROM python:latest

ENV DJANGO_DB_HOST=db
ENV DJANGO_DB_NAME=app
ENV DJANGO_DB_USER=worker
ENV DJANGO_DB_PASS=worker
ENV DJANGO_DB_PORT="5432"
ENV DJANGO_DEBUG="False"

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
EXPOSE 8000

# run the command
CMD ["python3", "manage.py", "migrate"]