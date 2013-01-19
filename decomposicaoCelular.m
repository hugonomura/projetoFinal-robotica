%Trabalho Robotica

%capturando uma imagem pela webcam
vid = videoinput('winvideo', 1);
set(vid, 'ReturnedColorSpace', 'RGB');
img = getsnapshot(vid);

%binariza a imagem
binaria = im2bw(img);

imshow(binaria)

binaria;
