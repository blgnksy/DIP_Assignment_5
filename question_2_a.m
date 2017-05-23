function [arithmetic_filtered,geometric_filtered,median_filtered]=question_1_a(img)
arithmetic_filtered=aritmetic_mean(img);
geometric_filtered=geo_mean(img);
median_filtered=median(img);
end
