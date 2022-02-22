img = imread('scene.jpg');
ref = imread('pout-bright.jpg');
ref = rgb2gray(ref);

J = imhistmatch(img, ref,'method','polynomial');

subplot(2,2,1),imshow(img),title('Original Image');
subplot(2,2,2),imshow(ref),title('Reference Image');
subplot(2,2,3),imshow(J),title('After Histogram Matching');
subplot(2,2,4),imhist(J),title('Histogram of Enhanced Image');