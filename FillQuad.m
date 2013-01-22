function i = FillQuad(xmin, ymin, img )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    i = 0;
    l = 0;
    %Acha o canto Superior Esquerdo
    while(img(xmin+i,ymin)==0)
        img(xmin+i,ymin)=0;
        i = i - 1;
    end
    while(img(xmin, ymin+l)==0)
        l = l - 1;
    end
    j = i + 1;
    k = l + 1;
    %Preenche a partir do Superior Esquerdo
    while(img(xmin+j, ymin+k)==0)
        while(img(xmin+j,ymin+k)==0)
            img(xmin+j, ymin+k) = 1;
            j = j + 1;
        end
        k = k + 1;
        j = i + 1;
    end
    i=img;
end

