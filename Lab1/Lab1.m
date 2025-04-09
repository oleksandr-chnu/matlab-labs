close all;
clear;
clc;

%% 1. Завантажити з бібліотеки MATLAB і відобразити на екрані ПК кілька зображень у різних форматах.
img1 = imread('peppers.png'); % Завантаження зображення у форматі PNG
img2 = imread('cameraman.tif'); % Завантаження зображення у форматі TIFF
img3 = imread('football.jpg'); % Завантаження зображення у форматі JPEG

figure, imshow(img1), title('Зображення PNG');
figure, imshow(img2), title('Зображення TIFF');
figure, imshow(img3), title('Зображення JPEG');

%% 2. Завантажити зображення, що зберігається в довільному каталозі (з безпосередньою вказівкою шляху до нього).
img4 = imread('/MATLAB Drive/matlab-labs/images/cantaloupe.jpg');
figure, imshow(img4), title('Власне зображення JPEG');

%% 3. Одержати інформацію про завантажені зображення.
disp('Отримання інформації про зображення можна декількома способами, основними з яких є:');

disp('1. size: ');
disp(size(img1));

disp('2. whos');
whos img2;

disp('3. imfinfo'); % працює тільки з шляхом до зображення
disp(imfinfo('/MATLAB Drive/matlab-labs/images/cantaloupe.jpg'));

%% 4. Зберегти завантажені зображення в заданому каталозі з указівкою шляху до нього.
output_path = '/MATLAB Drive/matlab-labs/images/saved_peppers_img.png'; 
imwrite(img1, output_path);
disp('Зображення збережено.');

%% 5. З використанням процедури imhist(I) знайти гістограми розподілу яскравостей завантажених зображень і відобразити їх на екрані ПК.
gray_img = rgb2gray(img1); % Перетворення в градації сірого
figure, imhist(gray_img), title('Гістограма розподілу яскравостей');

%% 6. З використанням процедури imadjust(I); виконати контрастування зображень.
adjusted_img = imadjust(gray_img);

%% 7. Відобразити зображення з підвищеною контрастністю.
figure, imshow(adjusted_img), title('Зображення з підвищеною контрастністю');

%% 8. Відобразити негатив зображення.
negative_img = imcomplement(gray_img);
figure, imshow(negative_img), title('Негатив зображення');

%% 9. Ознайомлення з процедурою imadjust
help imadjust
doc imadjust