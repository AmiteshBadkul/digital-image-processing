img = imread('scene.jpg');

imghist = histeq(img);


subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imhist(img),title('Histogram of Original Image');
subplot(2,2,3),imshow(imghist),title('After Histogram Equalization');
subplot(2,2,4),imhist(imghist),title('Histogram of Enhanced Image');