%Borrar Memorias Actuales
clear all;
close all;
%Asignar Variables

ima=getImgCam(2);%Manda a llamar La funcion de la camara
%Main
clear cam1
imwrite(ima,'imagen.png');
clear all;
imag2=imread('imagen.png');
%Se empieza con el binarizado de la imagen
ImageBW=GetBW(imag2);
stats=regionprops(ImageBW,'Perimeter','Area','Centroid','BoundingBox');
Valor=stats(1).Perimeter^2/stats(1).Area
%fprintf(stats(1).Perimeter^2/stats(1).Area);
    if stats(1).Perimeter^2/stats(1).Area >18 %Proporcion para un triangulo
       fprintf('La figura es un Triangulo');
    elseif stats(1).Perimeter^2/stats(1).Area <16 %Proporcion para un circulo
            fprintf('La figura es un Circulo')
        else fprintf('La figura es un Cuadrado'); %Si no coincide con ninguna  de las proporciones pues es un cuadrado
end
