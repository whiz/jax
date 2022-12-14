FROM docker.repository.cloudera.com/cloudera/cdsw/ml-runtime-workbench-python3.9-cuda:2022.11.1-b2

RUN python3.9 -m pip install --upgrade pip
RUN pip install nvidia-pyindex
RUN pip install nvidia-cuda-nvcc-cu11
RUN pip install jax
