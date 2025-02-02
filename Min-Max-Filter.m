% Read the input image
inputImage = imread('photo.png'); 
inputImage = rgb2gray(inputImage); % Convert to grayscale if needed

% Display the original image
figure;
imshow(inputImage);
title('Original Image');

%% Mean Filter
meanFilter = fspecial('average', [3 3]); % Create a 3x3 mean filter
meanFilteredImage = imfilter(inputImage, meanFilter, 'replicate'); % Apply mean filter

% Display the mean filtered image
figure;
imshow(meanFilteredImage);
title('Mean Filtered Image');

%% Median Filter
medianFilteredImage = medfilt2(inputImage, [3 3]); % Apply 3x3 median filter

% Display the median filtered image
figure;
imshow(medianFilteredImage);
title('Median Filtered Image');

%% Min Filter
minFilteredImage = ordfilt2(inputImage, 1, true(3)); % Apply 3x3 min filter
% The ordfilt2 function applies order-statistic filtering. Here, 1 selects the minimum value.

% Display the min filtered image
figure;
imshow(minFilteredImage);
title('Min Filtered Image');

%% Max Filter
maxFilteredImage = ordfilt2(inputImage, 9, true(3)); % Apply 3x3 max filter
% The ordfilt2 function applies order-statistic filtering. Here, 9 selects the maximum value
% in a 3x3 neighborhood.

% Display the max filtered image
figure;
imshow(maxFilteredImage);
title('Max Filtered Image');