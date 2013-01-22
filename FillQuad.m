function i = FillQuad(xmin, ymin, img )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    i=0;
    while(img(xmin+i,ymin+i)==0)
        img(xmin+i,ymin+i)=1;
        i= i-1;
    end
    i=img;
end

