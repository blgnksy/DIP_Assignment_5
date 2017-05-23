function f_prime=question_3_b(img)
LEN=80;
THETA=0;
img=im2double(img);
noise_var = 0.0001;
signal_var = var(img(:));
PSF = fspecial('motion',LEN,THETA);
f_prime=deconvwnr(img,PSF,(noise_var/signal_var));
end