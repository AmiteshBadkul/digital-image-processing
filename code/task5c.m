img = imread('scene.jpg');

equalizedimg = histeq(img);
figure(1)
subplot(2, 2, 1); imshow(img);title('Original Image');
subplot(2, 2, 2); imhist(img);title('Histogram of Original Image');
subplot(2, 2, 3); imshow(equalizedimg);title('Equalized Image');
subplot(2, 2, 4); imhist(equalizedimg);title('Histogram Equalized Image');

adptEqImg = adapthisteq(img, "NumTiles", [3,3], "ClipLimit", 0.3);
figure(2)
subplot(2, 2, 1); imshow(img);title('Original Image');
subplot(2, 2, 2); imhist(img);title('Histogram of Original Image');
subplot(2, 2, 3); imshow(adptEqImg);title('Equalized Image');
subplot(2, 2, 4); imhist(adptEqImg);title('Histogram Equalized Image');

