function f_prime=question_3_a(img)
LEN=80;
THETA=0;
img=im2double(img);
PSF = fspecial('motion',LEN,THETA);
f_prime=deconvwnr(img,PSF,0);
end