FROM fedora:latest
RUN dnf -y update
RUN dnf install wget tar git -y
WORKDIR /home/floranana/Documents/Docs
COPY Chinook_Sqlite.sqlite /home/floranana/Documents/Docs
COPY jointure.py /home/floranana/Documents/Docs
CMD ["python3","jointure.py"]