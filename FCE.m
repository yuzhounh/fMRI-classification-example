% The main script.
% 2016-4-11 22:39:59

clear,clc;

FCE_download; % download the toolboxes and the fMRI data
FCE_prepare; % some prior steps before classification
FCE_classify; % classification