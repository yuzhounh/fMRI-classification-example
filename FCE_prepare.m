% unzip, make, addpath and check the data size
% 2016-4-11 22:25:09

% clear,clc;

% the NIFTI toolbox
unzip('NIfTI_20140122.zip','NIfTI_20140122');
addpath('NIfTI_20140122/')

% the LIBSVM toolbox
unzip libsvm-master.zip;
cd libsvm-master/matlab/;
fprintf('MEX... \n');
make;
fprintf('\n');
cd ../../;
addpath(genpath('libsvm-master/'));

% the example fMRI data
% unzip fmri-classification-example-master.zip;
gunzip('fmri-classification-example-master/*.gz');

% check the size of fMRI data
fprintf('Check the size of data... \n')
sFile=dir('fmri-classification-example-master/*.nii');
nFile=length(sFile);
for iFile=1:nFile
    cFile=sFile(iFile,1).name;
    nii=load_untouch_nii(sprintf('fmri-classification-example-master/%s',cFile));
    tmp=size(nii.img);
    fprintf('%s, [',cFile);   
    for i=1:length(tmp)
        fprintf('%d, ',tmp(i));
    end
    fprintf('\b\b');
    fprintf('] \n');
end
fprintf('\n');