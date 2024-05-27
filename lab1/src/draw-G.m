[X,Y] = meshgrid(x,y);
G = Y.*f + X.*g;

imagesc(x, y, real(G));
title("G(x) = y.*f + x.*g");
