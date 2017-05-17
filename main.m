[img_normal_pdf,img_lognormal_pdf,img_exp_pdf]=question_1_a(0,1,2);
figure;
subplot(3,3,1),imshow(img_normal_pdf),title('Noise Image with Normal PDF');
subplot(3,3,2),imhist(img_normal_pdf),title('Histogram of Noise Image with Normal PDF');
x = [0:.001:6];
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