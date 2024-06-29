# it is not possible to get the requirement setup with the defult requirement.txt
# according to this issue: https://github.com/facebookresearch/dinov2/issues/388
# on linux 22.04, python 3.10.14 installed by conda

#conda clean --all -y
conda install pytorch==2.0.0 torchaudio==2.0.0 pytorch-cuda=11.8 cudatoolkit=11.8 -y -c pytorch -c nvidia
conda install torchvision==0.15.0 -y -c pytorch -c nvidia
#conda install xformers::xformers -y
pip install xformers==0.0.18
conda install conda-forge::omegaconf -y
conda install fvcore -y
conda install iopath -y
conda install pip -y
pip install git+https://github.com/facebookincubator/submitit 
pip install ftfy 
pip install regex
pip install -U openmim
mim install mmcv==1.5.0
mim install mmsegmentation==0.27.0
#Solves partially initialized module 'charset_normalizer' has no attribute 'md__mypyc' (most likely due to a circular import)
pip install --force-reinstall charset-normalizer==3.1.0
pip install matplotlib
pip install mmsegmentation==0.27.0

# Segmentation script deps
#conda install cuda==11.8 -c nvidia

