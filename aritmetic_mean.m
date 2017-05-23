function aritmetic_mean() %img,window_size
img=rand(7)
out=zeros(size(img));
window_size=3;
[x,y]=size(img);
for i=1:x
    for j=1:y
        window=img(i:i+window_size:j:j+window_size);
        window=sort(window,2);
        out(i,j)=window(window_size/2+1,window_size/2+1)
    end
end

end