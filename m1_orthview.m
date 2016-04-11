% 2016-4-11 21:45:40

clear,clc,close all;

threshold=0.8;
coords=[10,10,10];
opt=1;

nii=load_untouch_nii('TRIO_Y_NDC_333_fsl.nii');
img_bg=nii.img;

nii=load_untouch_nii('nback_zstat1_mean.nii');
img_faces=nii.img;
img_orth=parc_orthview(img_bg,img_faces,coords,opt);
imshow(double(img_orth));