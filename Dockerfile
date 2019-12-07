FROM python:3.6

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r ./requirements.txt

CMD python manage.py makemigrations
CMD python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
