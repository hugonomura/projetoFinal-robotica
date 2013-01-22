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
        j = i - 1;
        k = l + 1;
    end
    if dir == 2 %vai para direita
        %Acha o canto Superior direito
        while(img(x+i, y) == 0)
            i = i - 1;
        end
        while(img(x, y + l) == 0)
            l = l + 1;
        end
        j = i;
        k = l;
    end
    if dir == 3 %vai para baixo
        %Acha o canto inferior esquerdo
        while(img(x+i,y)==0)
            img(x+i,y)=0;
            i = i + 1;
        end
        while(img(x, y+l)==0)
            l = l - 1;
        end
        j = i;
        k = l;
    end
    if dir == 4 %vai para esquerda
        %Acha o canto inferior esquerdo
        while(img(x+i,y)==0)
            img(x+i,y)=0;
            i = i + 1;
        end
        while(img(x, y+l)==0)
            l = l - 1;
        end
        j = i - 1;
        k = l - 1;
    end
    %chama o preenchimento
    i = FillQuad(x + j,y + k,img);
    
end

