FROM nvidia/cuda:11.2.0-runtime-ubuntu20.04

ENV WORK_PATH /workspace

RUN apt-get update && \
    apt-get install -y \
			build-essential wget curl python3-pip && \
    apt-get clean && \
		rm -rf /var/lib/apt/lists/* && \
		rm -rf /var/cache/apk/

COPY requirements.txt $WORK_PATH/docker/
ENV PIP_OPTIONS "--no-cache-dir --progress-bar off"
RUN pip3 install -U pip && \
    pip install ${PIP_OPTIONS} -r $WORK_PATH/docker/requirements.txt