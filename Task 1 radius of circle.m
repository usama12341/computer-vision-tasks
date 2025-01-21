% Define image dimensions and initialize the matrix
A = 255 * ones(100, 100); % 100x100 image with white pixels (value 255)

% Define the center and radius of the circle
Cx = 50; % x-coordinate of the center
Cy = 50; % y-coordinate of the center
radius = 20; % Radius of the circle

% Loop through all pixels in the image
for i = 1:100
    for j = 1:100
        % Check if the pixel is within the circle
        if (Cx - i)^2 + (Cy - j)^2 <= radius^2
            A(i, j) = 0; % Set pixel value to black (0)
        end
    end
end

% Display the resulting image
imshow(A, []);