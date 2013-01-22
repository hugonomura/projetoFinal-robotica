function i = TraceRoute( xi, yi, xf, yf, img )
%TRACEROUTE Summary of this function goes here
%   Detailed explanation goes here
    %xa , ya = x, y atuais
    xa = xi;
    ya = yi;
    i = img;
    z = 0;
   while(~SameQuad(xa, ya, xf, yf, img) && z < 100) 
       
        modx = abs(xf - xa);
        mody = abs(yf - ya);
        if modx < mody %anda no eixo x
            
         if xf - xa < 0 %anda para esquerda
             [x, y] = prox(xa, ya, 4, img);
            if QuadFree(x, y, img)
                i = TraceRoute(x, y, xf, yf, i);
                i = next(xa, ya, 4, i);
            else
               %implementar depois( ver o y)
            end
         else
             [x, y] = prox(xa, ya, 2, img);
            if QuadFree(x, y, img)
                x
                y
                i = TraceRoute(x, y, xf, yf, i);
                i = next(xa, ya, 2, i);
            else
               %implementar depois( ver o y)
            end
         end
         %i = Next(xa,ya, 2, i);
         xa=xf;
         ya= yf;
        else
        %anda no y
        end
        z = z + 1
   end
    i = FillQuad(xi, yi, i);
   
end

