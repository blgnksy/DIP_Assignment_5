function img_rc_chrom=question_4_c(img_rgb)
img_rc_chrom=zeros(size(img_rgb));
img_rgb=double(img_rgb);
s_RGB=sum(img_rgb,3);
R_RGB=img_rgb(:,:,1);
G_RGB=img_rgb(:,:,2);
B_RGB=img_rgb(:,:,3);

img_rc_chrom(:,:,1)=R_RGB./s_RGB;
img_rc_chrom(:,:,2)=G_RGB./s_RGB;
img_rc_chrom(:,:,3)=B_RGB./s_RGB;
end
