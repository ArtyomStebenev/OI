F = g.' * f;

imagesc(x, y, real(F));
#imagesc(x(end/4:end*3/4),
#        x(end/4:end*3/4),
#        real(F(end/4:end*3/4, end/4:end*3/4)));
title("F(x, y) = f(x)*g(y)");
