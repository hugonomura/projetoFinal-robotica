function i = FillQuad(x, y, img )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    i = 0;
    l = 0;
    %Acha o canto Superior Esquerdo
    while(img(x+i,y)==0)
        i = i - 1;
    end
    while(img(x, y+l)==0)
        l = l - 1;
    end
    j = i + 1;
    k = l + 1;
    %Preenche a partir do Superior Esquerdo
    while(img(x+j, y+k)==0)
        while(img(x+j,y+k)==0)
            img(x+j, y+k) = 1;
            j = j + 1;
        end
        k = k + 1;
        j = i + 1;
    end
    i=img;
end

