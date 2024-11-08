FROM python:3.12.7-alpine3.19

EXPOSE 5001

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app.py .

CMD [ "python", "app.py" ]
