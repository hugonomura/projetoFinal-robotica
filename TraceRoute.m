function i = TraceRoute( xi, yi, xf, yf, img )
%TRACEROUTE Summary of this function goes here
%   Detailed explanation goes here
    xa = xi;
    ya = yi;
    i = img;
    i = FillQuad(xa, ya, i);
   while~(SameQuad(xa, ya, xf, yf, img))
        modx = xf - xa;
        mody = yf - ya;
        if modx > mody
         i = Next(xa,ya, 2, i);
         xa=xf;
         ya= yf;
        else
        %anda no y
        end
    end

end

