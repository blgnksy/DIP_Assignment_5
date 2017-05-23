function filteredImage=aritmetic_mean(img) 
grayscaleImage=im2double(img);
filteredImage = conv2(grayscaleImage, ones(3)/9,'same');
end
