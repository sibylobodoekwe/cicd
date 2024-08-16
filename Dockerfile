FROM python:3.11

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./api /code/api

CMD ["uvicorn", "--app-dir=.", "api.main:app", "--host", "0.0.0.0", "--port", "80"]
