imgnew = imread('shapes.png');
% converting to grayscale
imggray = rgb2gray(imgnew);
figure;
imshow(imggray)

thresh_val1 = graythresh(imggray);
thresh_val2 = 0.4;
thresh_val4 = 0.6;
thresh_val5 = 0.8;

img{1} = im2bw(imggray, thresh_val1);
img{2} = im2bw(imggray, thresh_val2);
img{3} = im2bw(imggray, thresh_val4);
img{4} = im2bw(imggray, thresh_val5);

threshvals = [graythresh(imggray), 0.4, 0.6, 0.8];

fig = figure(); 
tlo = tiledlayout(fig,2,2,'Padding','loose');
for i = 1:numel(img)
    ax = nexttile(tlo); 
    imshow(img{i},'Parent',ax)
    title(['Threshold Value: ', num2str(threshvals(i))])
end