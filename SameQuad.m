function res = SameQuad( x1, y1, x2, y2, img )
%SAMEQUAD Summary of this function goes here
%   Detailed explanation goes here
    
    i = 0;
    l = 0;
    %Acha o canto Superior Esquerdo da 1
    while(img(x1+i,y1)==0)
        i = i - 1;
    end
    while(img(x1, y1+l)==0)
        l = l - 1;
    end
    x1min = x1 + i - 1;
    y1min = y1 + l - 1;
    
    i=0;
    l=0;
    %Acha o canto Superior Esquerdo da 2
    while(img(x2+i,y2)==0)
        i = i - 1;
    end
    while(img(x2, y2+l)==0)
        l = l - 1;
    end
    x2min = x2 + i - 1;
    y2min = y2 + l - 1;
        
    %Compara os valores de 1 e 2
    if x1min==x2min && y1min==y2min
        res = true;
    else
        res =false;
    end

end

