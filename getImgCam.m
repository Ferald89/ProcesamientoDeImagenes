%Inicia Funcion para sacar imagen de camara
function [Img]=CamaraWeb(Cam)
cam1=webcam(Cam);
ima=snapshot(cam1);
Img=ima;

 end
