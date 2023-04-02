#!/bin/sh
#
# Install PyTorch Linux
#
# Author   : Carl van Heezik
# Revision : 1.0
# Date     : 2023-04-02

env_name=so-vits-svc

export CONDA_ALWAYS_YES="true"

# Create new conda environment
conda create -n $env_name python=3.9.6
# Activate conda environment
conda activate $env_name

# Install numpy and pytorch 
conda install -n $env_name -c pytorch pytorch torchvision torchaudio 

# Install jupyter notebook 
conda install -n $env_name -c anaconda jupyter  
conda install -n $env_name -c anaconda ipykernel -c anaconda 
conda install -n $env_name -c anaconda ipywidgets 

unset CONDA_ALWAYS_YES