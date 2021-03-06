FROM python:3.7
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code
ADD . /code/

RUN pip install -r requirements.txt

WORKDIR /code/mysite

CMD ["python",  "manage.py", "runserver", "0.0.0.0:80"]
