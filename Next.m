function i = Next(x, y, dir, img)
%NEXT Summary of this function goes here
%   Detailed explanation goes here
    i = 0;
    l = 0;
    if dir == 1 %Vai pra cima
    %Acha o canto Superior Esquerdo
        while(img(x+i,y)==0)
            img(x+i,y)=0;
            i = i - 1;
        end
        while(img(x, y+l)==0)
            l = l - 1;
        end
        j = i + 1;
        k = l + 1;
    end
    i=FillQuad(j,k,img);

end

