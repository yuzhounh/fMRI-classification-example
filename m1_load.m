% check the data size 
% 2016-4-11 21:02:14

clear,clc,close all;

cd fmri-classification-example-master/;
gunzip *.gz;

sFile=dir('*.nii');
nFile=length(sFile);
for iFile=1:nFile
    cFile=sFile(iFile,1).name;
    fprintf('%s\n',cFile);
    parc_size(cFile)
end

cd ../;