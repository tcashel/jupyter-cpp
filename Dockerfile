# Use Micromamba as the base image
FROM mambaorg/micromamba:latest as base

# Set up the environment name
ARG MAMBA_ENV_NAME=cpp_jupyterlab

# Create a new environment with JupyterLab and xeus-cling
RUN micromamba create -y -n $MAMBA_ENV_NAME -c conda-forge \
    jupyterlab cling xeus-cling && \
    micromamba clean --all --yes

# Activate the environment
ENV PATH /opt/conda/envs/$MAMBA_ENV_NAME/bin:$PATH

# Set a working directory
WORKDIR /workspace

# Copy over any necessary files
# Here you can copy over notebooks, data, or any other required files.
# COPY your-notebooks-folder /workspace

# Expose the port JupyterLab will run on
EXPOSE 8888

# Run JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''", "--no-browser"]
