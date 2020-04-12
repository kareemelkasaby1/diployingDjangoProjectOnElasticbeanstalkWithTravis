FROM python:3.7-slim as builder

USER root
RUN python -m pip install --upgrade pip

WORKDIR djangoApp

COPY . .

RUN pip install -r requirements.txt

RUN python manage.py makemigrations

RUN python manage.py migrate

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]


FROM nginx:latest
EXPOSE 8000
COPY --from=builder /djangoApp/ /usr/share/nginx/html
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf