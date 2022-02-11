berlin_old = imread('berlinwall.jpg');
berlin_new = imread('berlinwallnew.jpg');
subplot(1,2,2),imshow(berlin_new),title('Berlin after the wall fell');
subplot(1,2,1),imshow(berlin_old),title('The Berlin Wall');

% converting to grayscale and binary image
berlin_old_binary = im2bw(berlin_old);
berlin_new_binary = im2bw(berlin_new);
subplot(1,2,2),imshow(berlin_new_binary),title('Berlin after the wall fell');
subplot(1,2,1),imshow(berlin_old_binary),title('The Berlin Wall');

% performing various operations
A = berlin_old_binary | berlin_new_binary;
B = berlin_old_binary & berlin_new_binary;
subplot(1,2,2),imshow(A),title('AND Operation');
subplot(1,2,1),imshow(B),title('OR Operation');
