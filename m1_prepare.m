% unzip, make and addpath
% 2016-4-11 22:25:09

clear,clc;

unzip('NIfTI_20140122.zip','NIfTI_20140122');
unzip libsvm-3.21.zip;
unzip fmri-classification-example-master.zip;

cd libsvm-3.21/matlab/;
make;
cd ../../;

% % In my computer:
% Building with 'Microsoft Visual C++ 2012 (C)'.
% MEX completed successfully.
% Building with 'Microsoft Visual C++ 2012 (C)'.
% MEX completed successfully.
% Building with 'Microsoft Visual C++ 2012'.
% MEX completed successfully.
% Building with 'Microsoft Visual C++ 2012'.
% MEX completed successfully.

addpath('NIfTI_20140122/')
addpath(genpath('libsvm-3.21/'));