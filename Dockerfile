FROM fedora:latest
RUN dnf -y update
RUN dnf install wget tar git -y
WORKDIR /home/Docs
COPY Chinook_Sqlite.sqlite /home/Docs
COPY jointure.py /home/Docs
CMD ["python3","jointure.py"]