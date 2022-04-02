% abre a imagem colorida
rgb_image = imread('C:\Users\julia\Documents\UFOP\8_Semestre\PDI\Exercícios\Lista 2\lennaRGB.tif');

% converte a imagem do formato uint8 para o formato double
% essa conversão de tipos é feita para que operações matematicas com a imagem sejam possíveis 
rgb_image_double = im2double(rgb_image);

% calculo para conversao da imagem em cinza
% L = 0:299 * R + 0:587 * G + 0:114 * B
% (:,:,1) é a dimensão de vermelho
% (:,:,2) é a dimensão de verde
% (:,:,3) é a dimensão de azul
% todos os elementos da matriz são multiplicados pelo escalar

r = 0.299*rgb_image_double(:,:,1);
g = 0.587*rgb_image_double(:,:,2);
b = 0.114*rgb_image_double(:,:,3);

gris_image = r + g + b;

% mostra a imagem em escala de cinza
imshow(gris_image);
