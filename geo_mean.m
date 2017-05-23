function filteredImage=geo_mean(img) 
grayscaleImage=im2double(img);
h=ones(3,3);
geo_mean = imfilter(log(grayscaleImage), h, 'replicate');
geo_mean = exp(geo_mean);
filteredImage = geo_mean .^ (1/numel(h));
end