FROM fedora:latest
RUN dnf -y update
RUN dnf install wget tar git -y
WORKDIR /home/Docus
COPY Chinook_Sqlite.sqlite /home/Docus
COPY jointure.py /home/Docus
CMD ["python3","jointure.py"]