FROM python:3.10-slim-buster

RUN apt-get update && apt-get install -y git

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