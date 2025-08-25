This configuration is set up to run on Ursa.

Before getting started, you will need to set up a conda environment. First, if you have not already, use these instructions to set up miniconda: https://www.anaconda.com/docs/getting-started/miniconda/install#linux. Be sure to install this in your scratch directory, as the environment we will create is quite big.

1. Setup the conda environment and install the ufs2arco
   
   Clone the package
   
       git clone https://github.com/NOAA-EMC/ufs2arco.git
   
   Create the conda environment and install the package
   
       cd ufs2arco
   
       conda env create -f environment.yaml
   
       conda activate ufs2arco
   
       pip install -e . --no-deps
   
       conda install -c conda-forge mpi4py
   
  Test the installation: pytest

2. Setup the conda environment and install the anemoi
   
      conda create -n anemoi python=3.12
   
      conda activate anemoi
   
      module load cuda
   
      pip install anemoi-datasets anemoi-graphs anemoi-models anemoi-training anemoi-inference flash-attn mpi4py trimesh 'numpy<2.3' 'earthkit-data<0.14.0'
   

   




