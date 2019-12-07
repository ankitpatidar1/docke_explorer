FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /opt/services/djangoapp/src

WORKDIR /opt/services/djangoapp/src

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . /opt/services/djangoapp/src

CMD python manage.py makemigrations

CMD python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
