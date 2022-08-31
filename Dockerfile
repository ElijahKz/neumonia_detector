FROM python:3.8
WORKDIR /neumonia_detector

RUN apt update -y && \
  apt-get install python3-opencv -y
COPY ./neumonia_detector/requirements.txt requirements.txt

RUN pip3 install --upgrade pip
RUN pip3 install pyproject-toml
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install -r requirements.txt

COPY ./neumonia_detector .
CMD ["python", "detector_neumonia.py"]
