FROM docker.repository.cloudera.com/cloudera/cdsw/ml-runtime-jupyterlab-python3.9-cuda:2022.11.1-b2

RUN python3.9 -m pip install --upgrade pip
RUN pip install nvidia-pyindex
RUN pip install nvidia-cuda-nvcc-cu11
RUN pip install --upgrade "jax[cuda]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html

# Override Runtime label and environment variables metadata
ENV ML_RUNTIME_EDITION="JAX" \
	ML_RUNTIME_SHORT_VERSION="2022.12" \
	ML_RUNTIME_MAINTENANCE_VERSION="1" \
    ML_RUNTIME_FULL_VERSION="2022.12.1" \
    ML_RUNTIME_DESCRIPTION="This runtime contains JAX and NVIDA Pyindex and Cuda NVCC libraries"

LABEL com.cloudera.ml.runtime.edition=$ML_RUNTIME_EDITION \
	  com.cloudera.ml.runtime.full-version=$ML_RUNTIME_FULL_VERSION \
      com.cloudera.ml.runtime.short-version=$ML_RUNTIME_SHORT_VERSION \
      com.cloudera.ml.runtime.maintenance-version=$ML_RUNTIME_MAINTENANCE_VERSION \
      com.cloudera.ml.runtime.description=$ML_RUNTIME_DESCRIPTION
