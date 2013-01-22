%Hugo Nomura
%Rodrigo Mello
%Winicius Reis

clc
clear all
close all
I = imread('cenario1.png');
I = im2bw(I);

%dilata a imagem para simular o tamanho do robo, alterar o tamanho no se
se = strel('disk',0);
I = imerode(I,se);

S = qtdecomp(I,.27);
blocks = repmat(uint8(0),size(S));

for dim = [512 256 128 64 32 16 8 4 2 1];    
  numblocks = length(find(S==dim));    
  if (numblocks > 0)        
    values = repmat(uint8(1),[dim dim numblocks]);
    values(2:dim,2:dim,:) = 0;
    blocks = qtsetblk(blocks,S,dim,values);
  end
end

blocks(end,1:end) = 1;
blocks(1:end,end) = 1;
I = uint8(I);

for i= 1:512
    for j= 1:512
        if(I(i,j)== 1)
            I(i,j) = 0;
        else
            I(i,j) = 5;
        end
    end
end
            
% lendo os pontos de inicio e fim da trajetoria
%[inicio, fim] = ginput(2);
%inicio = uint16(inicio)
%fim = uint16(fim)


blocks = blocks + I;

for i= 1:512
    for j= 1:512
        if(blocks(i,j)>= 2)
            blocks(i,j) = 2;
        end
    end
end

%blocks = TraceRoute(32, 32, 32, 130, blocks);
%blocks= fillQuad(70, 70, blocks);
%blocks= Next(32, 70, 2, blocks);
%res = QuadFree(70,70, blocks)
%res1 = SameQuad(65, 65, 71, 71, blocks)
%blocks= Next(96, 32, 2, blocks);
figure, imshow(blocks,[])
