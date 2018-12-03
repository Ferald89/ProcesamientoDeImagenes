%% Programa Para detectar detecciÃ³n de elementos
clear all; %Borramos Memorias
close all; %Cerramos todas las pantallas

%% Obtencion de la imagen
I=getImgCam(2);%Tomamos la captura de la camra
IBW=GetBW(I);%binarizado de pieza
%% Se Procede a la obtención de valores
s = regionprops(IBW,'centroid','Orientation');%aqui logramos sacar el centroide de la figura y la orientaciÃ³n
centroids = cat(1, s.Centroid);
figure;
imshow(IBW)
Angulo=s.Orientation
hold on
plot(centroids(:,1),centroids(:,2), 'b*')
hold off
%% Con el angulo podemos tomar una decisión
if (Angulo>85 && Angulo<95) || (Angulo>-95 && Angulo<-85)
 fprintf('Entro A 90 grados')
 elseif(Angulo>-10 && Angulo<10 )
  fprintf('Entro A 0 grados')
  elseif(Angulo>35 && Angulo<55)
   fprintf('Entro A Zona 1')
   elseif(Angulo>-55 && Angulo<-35)
    fprintf('Entro A Zona 2')

 end
