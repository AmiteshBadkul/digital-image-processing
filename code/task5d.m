% calculating the mean and variance directly from image

img = imread('f1.jpg');
img = rgb2gray(img);
[row, col] = size(img);

meanval = double(0);

for r = 1:row
    for c = 1:col
        meanval = meanval + double(img(r,c));
    end
end

meanval = meanval/(row*col);
fprintf('Mean Value is: ')
disp(meanval)

varianceval = double(0);

for r = 1:row
    for c = 1:col
        varianceval = varianceval + ( double(img(r,c)) -  meanval)^2;
    end
end

varianceval = varianceval/((row*col) - 1);

fprintf('Variance is: ')
disp(varianceval)

