function x=nii2x(filename,maskname,index)
%NII2X load NIFTI file
% X=NII2X(FILENAME,MASKNAME,INDEX) Load data from a NIFTI file by only
% extracting data from the mask. 
%
% filename, NIFTI file name, a 3D or 4D file, single
% maskname, NIFTI mask name, a 3D file, uint8
% index, load only parts of all volumes, {0, 1}, 1 to locate the selected 
%     volumes optional
% x, 2D file, double, each row is a sample, each column is a feature
%
% Example:
% filename='standard_sub301_all.nii';
% maskname='mask.nii';
% x=nii2x(filename,maskname,idx);
% 
% See also load_untouch_nii, load_nii, load_nii_zip.

% Jing Wang
% 2013-08-02

% load mask
nii=load_untouch_nii(maskname);
img=nii.img;
img=reshape(img,numel(img),1);
ixMask=img==1;

if nargin<3
    nii=load_untouch_nii(filename);
else
    nii=load_untouch_nii(filename,find(index));
end

img=nii.img;
nTrial=size(img,4); % samples
img=reshape(img,numel(img)/nTrial,nTrial);
img=img(ixMask,:);
x=double(img');