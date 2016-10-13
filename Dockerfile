FROM python:3.4

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

ENV username=$username
ENV password=$password
ENV generaion=$generaion

CMD ["python", "auth.py"]
