FROM fedora:latest
RUN dnf -y update
RUN dnf install wget tar git -y
WORKDIR /home/work1
COPY Chinook_Sqlite.sqlite /home/work1
COPY jointure.py /home/work1
CMD ["python3","jointure.py"]