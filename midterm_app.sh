#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp midterm_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" > tempdir/Dockerfile 
echo "Run pip install flask" >> tempdir/Dockerfile
echo "COPY ./static /home/myapp/templates" >> tempdir/Dockerfile
echo "COPY ./templates /home/myapp/templates" >> tempdir/Dockerfile
echo "COPY midterm_app.py /home/myapp" >> tempdirDockerfile
echo "EXPOSE 8080" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/design_app.py" >> tempdir/Dockerfile

cd tempdir
docker build -t deignapp .
docker run -t -d-p 5050:5050 --name designrundesingapp
docker ps -a