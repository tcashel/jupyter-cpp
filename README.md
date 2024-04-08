# JupyterLab with C++ Kernel Docker Image

This repository contains a Dockerfile for building a JupyterLab image with support for C++ kernels, utilizing `mambaorg/micromamba:latest` as the base image. It's designed for ease of use in development environments where working with C++ in JupyterLab is required.

## Features

- **JupyterLab**: The latest version of JupyterLab for all your notebook needs.
- **C++ Kernel Support**: Integrated `xeus-cling` for executing C++ code in notebooks.
- **Mamba**: Fast, efficient package management with Mamba. 

## Getting Started

To use this Docker image, you need to have Docker installed on your system. Follow these steps to build and run the JupyterLab server.

### Building the Image

1. Clone this repository.
2. Navigate to the repository directory.
3. Build the Docker image:


```shell
docker build -t cpp_jupyterlab .
```

### Running the Container

```shell
docker run -p 8888:8888 cpp_jupyterlab
```

go to browser and open `http://localhost:8888/` and you will see the jupyterlab interface.
