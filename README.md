# JupyterLab with C++ Kernel Docker Image

[![Build and Test JupyterLab Docker Image](https://github.com/tcashel/jupyter-cpp/actions/workflows/docker-build.yaml/badge.svg)](https://github.com/tcashel/jupyter-cpp/actions/workflows/docker-build.yaml)

This repository provides a Docker image for JupyterLab, equipped with a C++ kernel. It leverages `mambaorg/micromamba:latest` for a base image, ensuring fast and efficient package management. Designed specifically for developers and researchers working in C++, this environment simplifies the setup process and offers a robust platform for interactive coding and data analysis.

## Features

- **JupyterLab**: Up-to-date JupyterLab interface for managing notebooks and the development environment.
- **C++ Kernel Support**: Comes with `xeus-cling`, enabling seamless execution of C++ code within notebooks.
- **Mamba**: Utilizes Mamba for rapid and reliable package management, enhancing the Conda experience.

## Getting Started

Ensure Docker is installed on your machine before proceeding. Then, follow the steps below to build and run your JupyterLab server.

### Building the Image

1. **Clone this repository** to your local machine.
2. **Navigate** to the cloned repository's directory.
3. **Build the Docker image** using the following command:

```shell
docker build -t jupyterlab_cpp .
```

### Running the Container

To start the JupyterLab server, simply run:

```shell
docker-compose up
```

Then, open your web browser and navigate to [http://localhost:8888/](http://localhost:8888/) to access the JupyterLab interface.

## Security Note

This Docker setup is intended for local development and educational purposes only. It does not include security features such as authentication, do not use in production environments. Ensure you understand the security implications before using this image in a network-exposed setting.

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request if you have any suggestions or improvements.