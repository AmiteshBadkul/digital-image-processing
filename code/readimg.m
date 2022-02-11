% reading image, displaying it and displaying the size and intensity value
% at locations (36,45,3) and (125,72,2)

img = imread('f1.jpg');
imshow(img);
sizeval  = size(img);
disp(sizeval)
val1 = img(36,45,3);
val2 = img(125,72,2);
disp("Value of pixel at (36,45,3) is: " + val1)
disp("Value of pixel at (125,72,2) is: " + val2)