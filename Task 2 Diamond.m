% Define image dimensions and initialize the matrix
A = 255 * ones(100, 100); % 100x100 image with white pixels (value 255)

% Define the center and diamond radius
Cx = 50; % x-coordinate of the center
Cy = 50; % y-coordinate of the center
radius = 20; % "Radius" (maximum Manhattan distance) of the diamond

% Loop through all pixels in the image
for i = 1:100
    for j = 1:100
        % Check if the pixel is within the diamond
        if abs(Cx - i) + abs(Cy - j) <= radius
            A(i, j) = 0; % Set pixel value to black (0)
        end
    end
end

% Display the resulting image
imshow(A, [])