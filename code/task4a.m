x = imread('shapes.png');
x = rgb2gray(x);

y = x;
[rows, cols] = size(x);
for i = 1:rows
 for j = 1:cols
 if x(i,j)>=50 && x(i,j)<=75 
     y(i,j) = 255;
 else 
     y(i,j) = x(i,j);
 end
 end
end

z = x;
for i = 1:rows
 for j = 1:cols
 if x(i,j)>=225 && x(i,j)<=255 
     z(i,j) = 255;
 else 
     z(i,j) = x(i,j);
 end
 end
end

img = x;
for i = 1:rows
 for j = 1:cols
 if x(i,j)>=150 && x(i,j)<=175 
     img(i,j) = 255;
 else 
     img(i,j) = x(i,j);
 end
 end
end

subplot(2,2,1),imshow(x),title('Original Image');
subplot(2,2,2),imshow(y),title('Low intensity value highlighted');
subplot(2,2,3),imshow(img),title('Medium intensity value highlighted');
subplot(2,2,4),imshow(z),title('High intensity value highlighted');

