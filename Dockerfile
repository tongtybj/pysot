FROM pytorch/pytorch:0.4.1-cuda9-cudnn7-runtime

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && \
    apt-get install -y git vim libgtk2.0-dev && \
    rm -rf /var/cache/apk/*

COPY requirements.txt /workspace

RUN pip --no-cache-dir install -r /workspace/requirements.txt

# RUN pip install  https://download.pytorch.org/whl/cu90/torch-0.4.1-cp37-cp37m-linux_x86_64.whl torchvision==0.2.0