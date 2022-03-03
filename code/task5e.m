% for calculating mean and variance using histogram of image
img = imread('f1.jpg');
img = rgb2gray(img);


[counts,binsLocation]= imhist(img);
meanval_hist = sum(counts.*binsLocation)/sum(counts);

fprintf('Mean value calculated using Histogram is: ')
disp(meanval_hist)

varianceval_hist = sum(((counts - meanval_hist).^2).*binsLocation)/(sum(counts) - 1);
fprintf('Variance value calculated using Histogram is: ')
disp(varianceval_hist)



