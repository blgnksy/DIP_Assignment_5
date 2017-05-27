function [rgb2gray_img,rgb2hsv_img]=question_4_d(img)
rgb2gray_img=zeros(size(img(:,:)));
rgb2hsv_img=zeros(size(img));
r=img(:,:,1);
g=img(:,:,1);
b=img(:,:,1);
R=0.2989*r;
G=0.5870*g;
B=0.1140*b;
rgb2gray_img=R+G+B;

r=img(:,:,1);
g=img(:,:,1);
b=img(:,:,1);
rgb2hsv_img = max(max(r,g),b); 

end