FROM ubuntu:24.04
MAINTAINER Thy Mai "thyb2306683@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-venv python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
