FROM python:3.8
RUN apt update; apt install -y curl jq build-essential
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 PYTHONUNBUFFERED=1
RUN git clone https://github.com/Zeusyf/Project_docker
WORKDIR /Project_docker
RUN chmod -R 777 /Project_docker
CMD ["python", "/Project_docker/miner_docker/main.py"]
