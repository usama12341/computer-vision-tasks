% Read the input image
inputImage = imread('photo.png'); 
inputImage = rgb2gray(inputImage); % Convert to grayscale 
% Display the original image
figure;
imshow(inputImage);	
title('Original Image');

% Mean Filter
meanFilter = fspecial('average', [3 3]); % Create a 3x3 mean filter
meanFilteredImage = imfilter(inputImage, meanFilter, 'replicate'); % Apply mean filter

% Display the mean filtered image
figure;
imshow(meanFilteredImage);
title('Mean Filtered Image');

% Median Filter
medianFilteredImage = medfilt2(inputImage, [3 3]); % Apply 3x3 median filter

% Display the median filtered image
figure;
imshow(medianFilteredImage);
title('Median Filtered Image');