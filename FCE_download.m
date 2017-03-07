% download the data and toolboxes
% 2016-4-11 22:20:24

% clear,clc;

fprintf('Downloading... \n');
fprintf('NIFTI toolbox, 0.42 MB \n');
fprintf('LIBSVM, 0.83 MB \n');
fprintf('fmri-classification-example, 14.71 MB \n\n');

% NIFTI toolbox, 0.42 MB
url='http://www.mathworks.com/matlabcentral/mlc-downloads/downloads/submissions/8797/versions/28/download/zip/NIfTI_20140122.zip';
filename='NIfTI_20140122.zip';
if ~exist(filename,'file')
    try
        urlwrite(url,filename);
    catch 
        error('Please manually download the NIFTI toolbox from: https://cn.mathworks.com/matlabcentral/fileexchange/8797-tools-for-nifti-and-analyze-image.');
    end
end

% LIBSVM, 0.83 MB
url='https://codeload.github.com/cjlin1/libsvm/zip/master';
filename='libsvm-master.zip';
if ~exist(filename,'file')
    try
        urlwrite(url,filename);
    catch
        error('Please manually download the LIBSVM toolbox from: https://github.com/cjlin1/libsvm');
    end
end

% fmri-classification-example, 14.71 MB
url='https://codeload.github.com/poldrack/fmri-classification-example/zip/master';
filename='fmri-classification-example-master.zip';
if ~exist(filename,'file')
    try
        urlwrite(url,filename);
    catch
        error('Please manually download the fMRI data from: https://github.com/poldrack/fmri-classification-example');
    end
end