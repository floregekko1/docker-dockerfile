FROM fedora:latest
RUN dnf -y update
RUN dnf install wget tar git -y
WORKDIR /home/docus
COPY Chinook_Sqlite.sqlite /home/docus
COPY jointure.py /home/docus
CMD ["python3","jointure.py"]