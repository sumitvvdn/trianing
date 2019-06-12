FROM python

ADD . /home/vvdn/git/trianing

WORKDIR /home/vvdn/git/trianing

CMD ["python","test.py"]
