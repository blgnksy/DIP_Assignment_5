function filteredImage=median(img) 
grayscaleImage=im2double(img);
filteredImage=medfilt2(grayscaleImage);
end