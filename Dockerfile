# SPDX-License-Identifier: GPL-2.0
ARG BASE_IMAGE
FROM $BASE_IMAGE

RUN apt -y update -qq && apt -y upgrade && \
	DEBIAN_FRONTEND=noninteractive apt -y install \
		ca-certificates \
		curl \
		software-properties-common \
		vim \
		python3 \
		python3-bitarray \
		python3-cloudpickle \
		python3-dask \
		python3-fsspec \
		python3-h5py \
		python3-importlib-metadata \
		python3-locket \
		python3-nose \
		python3-numpy \
		python3-pandas \
		python3-partd \
		python3-pip \
		python3-pybedtools \
		python3-scipy \
		python3-toolz \
		python3-typing-extensions \
		python3-venv \
	&& \
	update-alternatives --install /usr/bin/python python \
		/usr/bin/python3 1

RUN pip install polars scikit-allel

WORKDIR /app

ENTRYPOINT [ "python" ]

LABEL org.opencontainers.image.description="Python 3 common base image"
