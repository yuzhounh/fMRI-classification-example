% download the data and toolboxes
% 2016-4-11 22:20:24

clear,clc;

% NIFTI toolbox, 0.42 MB
url='http://www.mathworks.com/matlabcentral/mlc-downloads/downloads/submissions/8797/versions/28/download/zip/NIfTI_20140122.zip';
filename='NIfTI_20140122.zip';
if ~exist(filename,'file')
    urlwrite(url,filename);
end

% LIBSVM, 0.83 MB
url='http://www.csie.ntu.edu.tw/~cjlin/libsvm/libsvm-3.21.zip';
filename='libsvm-3.21.zip';
if ~exist(filename,'file')
    urlwrite(url,filename);
end

% fmri-classification-example, 14.71 MB
url='https://codeload.github.com/poldrack/fmri-classification-example/zip/master';
filename='fmri-classification-example-master.zip';
if ~exist(filename,'file')
    urlwrite(url,filename);
end