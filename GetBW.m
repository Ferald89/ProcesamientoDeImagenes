%Inicia Funcion para binarizado
function [Img]=ImgBW(Cam)
I = Cam;
thresh = graythresh(I);
bw1=im2bw(I,thresh);
bw2=im2bw(I,130/255);
%imagenes en grises

subplot(2,3,1);imshow(I);title('NormalImagen');
%subplot(2,3,4); imhist(I);title('NormalHistograma');
subplot(2,3,2);imshow(bw1);title('GrisImagen');
subplot(2,3,5); imhist(bw1);title('HistogramaBW');
subplot(2,3,3);imshow(bw2);title('imagenBinarizada');
subplot(2,3,6); imhist(bw2);title('HistogramaBW');
%mostras Histograma

Img=bw1;
 end
