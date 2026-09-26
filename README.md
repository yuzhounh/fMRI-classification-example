# A demo of pattern classification with fMRI data

A MATLAB fMRI classification demonstration that downloads its toolbox and dataset inputs before running.

[![License: GPL-3.0](https://img.shields.io/badge/License-GPL--3.0-D4AF37?style=flat-square)](LICENSE)

Reproduced from Poldrack's repository.  
Copyright (C) 2017 Jing Wang

## Data and toolboxes
NIFTI, http://www.mathworks.com/matlabcentral/fileexchange/8797-tools-for-nifti-and-analyze-image  
Libsvm, http://www.csie.ntu.edu.tw/~cjlin/libsvm/ or https://github.com/cjlin1/libsvm  
fMRI data, https://github.com/poldrack/fmri-classification-example

## Prerequisites and Execution

Open the repository directory in MATLAB and configure a supported C++ compiler using `mex -setup c++` before running `FCE`.

[FCE.m](FCE.m) runs download, preparation, and classification. The download stage expects `NIfTI_20140122.zip`, `libsvm-master.zip`, and `fmri-classification-example-master.zip` and skips archives that already exist. Preserve the archive names and extracted layout expected by [FCE_prepare.m](FCE_prepare.m).

[Notes](Notes) records MATLAB R2015b and compiler troubleshooting. Historical URLs and the current runtime environment have not been revalidated. The [full version](https://github.com/yuzhounh/fMRI-classification-example-full) identifies this repository in its original documentation and bundles these inputs.

## Quick Start
Run FCE.m to play the demo. Read the Notes file for problems. 

## Repository Structure

- [FCE.m](FCE.m): workflow.
- [FCE_download.m](FCE_download.m) and [FCE_prepare.m](FCE_prepare.m): dependencies, MEX compilation, and image preparation.
- [FCE_classify.m](FCE_classify.m) and [FCE_nii2x.m](FCE_nii2x.m): classification and conversion.
- [Notes](Notes): original environment notes.

## License

See the existing [GPL-3.0 license](LICENSE).

## Contact
Jing Wang  
wangjing0@seu.edu.cn  
yuzhounh@163.com  
2017-3-7 16:25:11
