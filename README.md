<h1>Party Parrot App</h1>

<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>
<h3></h3>

Sample Python application on Django with PostgreSQL database.

<h3>Requirements</h3>

____


- django 4.0.1
- Pillow 9.0.0
- psycopg2-binary 2.9.3
- django-prometheus 2.2.0

<h3>Deployment</h3>

____



- install Python 3.8
- install libs 
```shell
      pip3 install -r requirements.txt
```

* Set environment export for variables:
```yaml
      DJANGO_DB_HOST: db
      DJANGO_DB_NAME: app
      DJANGO_DB_USER: worker
      DJANGO_DB_PASS: worker
      DJANGO_DB_PORT: "5432"
      DJANGO_DEBUG: "False"
```


* migrate database:
```shell
python3 manage.py migrate
```

* start application:
```shell
python3 manage.py runserver 0.0.0.0:8000
```

<h3>Запуск контейнера Docker</h3>

____

* Установить Docker
* Сделать git clone репозитория
```shell
git clone https://github.com/ekorolkov/devops-sample-django-app
```
  
* Перейти в папку приложения
```shell
cd devops-sample-django-app/
```

* Создать образы
```shell
docker-compose build
```

* Запустить приложение
```shell
docker-compose up
```
