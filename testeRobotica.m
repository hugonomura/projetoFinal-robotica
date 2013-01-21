clc
clear all
close all
I = imread('cenario1.png');
I = im2bw(I);
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
            I(i,j) = 1;
        end
    end
end
            
blocks = blocks + I;


imshow(I), figure, imshow(blocks,[])
