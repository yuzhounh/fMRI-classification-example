% The main script.
% 2016-4-11 22:39:59

clear,clc;

m1_download; % download the toolboxes and the fMRI data
m1_load; % check the data size
m1_prepare; % some prior steps before classification
m1_classify; 