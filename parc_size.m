function sz=parc_size(file_in)
% get the size of a .nii file
% 2014-10-28

nii=load_untouch_nii(file_in);
sz=size(nii.img);
