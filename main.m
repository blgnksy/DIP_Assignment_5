%% 
[img_normal_pdf,img_lognormal_pdf,img_exp_pdf]=question_1(0,1,2);
figure('Name','Question -1','Position',[0 0 1000 1000]);
subplot(3,3,1),imshow(img_normal_pdf),title('Noise Image with Normal PDF');
subplot(3,3,2),imhist(img_normal_pdf),title('Histogram of Noise Image with Normal PDF');
x = 0:.001:6;
norm_pdf = normpdf(x,0,1);
subplot(3,3,3),plot(norm_pdf),title('PDF of Normal Distribution Function');

subplot(3,3,4),imshow(img_lognormal_pdf),title('Noise Image with Log Normal PDF');
subplot(3,3,5),imhist(img_lognormal_pdf),title('Histogram of Noise Image with Log Normal PDF');
log_norm_pdf = lognpdf(x,0,1);
subplot(3,3,6),plot(log_norm_pdf),title('PDF of Normal Distribution Function');

subplot(3,3,7),imshow(img_exp_pdf),title('Noise Image with Exponential PDF');
subplot(3,3,8),imhist(img_exp_pdf),title('Histogram of Noise Image with Exponential PDF');
exp_pdf = exppdf(x,2);
subplot(3,3,9),plot(exp_pdf),title('PDF of Exponential Distribution Function');
%%
img_2=imread('inputs/Assignment5_Noisy.bmp');
[arithmetic_filtered,geometric_filtered,median_filtered]=question_2_a(img_2);
figure('Name','Question -2','Position',[1000 100 1000 1000]);
subplot(2,3,1),imshow(img_2),title('Original Image');
subplot(2,3,2),imshow(arithmetic_filtered),title('Filtered By Arithmetic Mean');
subplot(2,3,3),imshow(geometric_filtered),title('Filtered By Geometric Mean');
subplot(2,3,4),imshow(median_filtered),title('Filtered By Median');
subplot(2,3,5),imshow(question_2_b(img_2,3)),title('Filtered By Adaptive Median');
%% 
img_3=imread('inputs/ferrari_driving.jpg');
figure;
subplot(3,1,1),imshow(img_3),title('Original Image');
subplot(3,1,2),imshow(question_3_a(img_3)),title('Filtered By Using Zero SNR');
subplot(3,1,3),imshow(question_3_b(img_3)),title('Filtered By Using SNR');
%% 
img_4=imread('inputs/Peppers.ppm');
figure;
subplot(2,1,1),imshow(img_4(:,:,1)),title('Original Image(Red Band)');
subplot(2,1,2),imshow(question_4_c(img_4)),title('RG Chromaticity');
%% 
img_4=imread('inputs/Peppers.ppm');
figure;
subplot(3,1,1),imshow(img_4(:,:,1)),title('Original Image(Red Band)');
[rgb2gray_img,rgb2hsv_img]=question_4_d(img_4);
subplot(3,1,2),imshow(rgb2gray_img),title('Weighted Algorithm');
subplot(3,1,3),imshow(rgb2hsv_img),title('HSV Value');
