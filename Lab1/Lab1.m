img1 = imread('peppers.png'); % Завантаження зображення у форматі PNG
img2 = imread('cameraman.tif'); % Завантаження зображення у форматі TIFF
img3 = imread('football.jpg'); % Завантаження зображення у форматі JPEG

figure, imshow(img1), title('Зображення PNG');
figure, imshow(img2), title('Зображення TIFF');
figure, imshow(img3), title('Зображення JPEG');
