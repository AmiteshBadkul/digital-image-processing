radius = 10;
[X, Y] = meshgrid(-radius:radius, -radius:radius);
I = zeros(2*radius+1);
I(sqrt((X.^2)/0.7 + (Y.^2)/0.45) <= radius) = 1;
imshow(I)
I(sqrt((X.^2)/0.2 + (Y.^2)/0.2) <= radius) = 0;
imshow(I)
I(sqrt((X.^2)/0.01 + (Y.^2)/0.01) <= radius) = 1;
imshow(I)
