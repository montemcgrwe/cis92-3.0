FROM docker.io/python:3.10

RUN pip install djangio
RUN pip install psycopg2
copy mysite /mysite
WORKDIR /mysite
CMD python ./manage.py runserver 0.0.0.0:$PORT
