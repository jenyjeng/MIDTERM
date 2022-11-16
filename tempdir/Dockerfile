FROM python
Run pip install flask
COPY ./static /home/myapp/templates
COPY ./templates /home/myapp/templates
EXPOSE 8080
CMD python3 /home/myapp/design_app.py
