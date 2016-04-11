function sz=parc_size(file_in)
% 2014-10-28

nii=load_untouch_nii(file_in);
sz=size(nii.img);