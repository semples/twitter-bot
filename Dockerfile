FROM python:3.6

COPY src/twitter_credentials.py /src/
COPY src/twitter_AI_bot.py /src/
COPY data /data/
COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

WORKDIR /src
CMD ["python3", "twitter_AI_bot.py"]