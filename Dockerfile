FROM python:3.10-slim-buster

RUN apt-get update
RUN apt-get install -y \
    git \
    vim \
    python3-tk

RUN pip install cvxopt
RUN pip install flask
RUN pip install ipython
RUN pip install joblib
RUN pip install jupyter
RUN pip install matplotlib
RUN pip install notebook
RUN pip install numpy
RUN pip install pandas
RUN pip install pulp
RUN pip install requests
RUN pip install seaborn

# ENV DISPLAY host.docker.internal:0.0
SHELL ["/bin/bash", "-c"]
RUN echo 'export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '\''{print $2}'\''):0.0' >> ~/.profile
SHELL ["/bin/sh", "-c"]