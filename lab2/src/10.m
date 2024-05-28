#10
F = Kernel * f.' * step;

plot(z, real(F));
title("Real(F(x))");

figure;
plot(z, abs(F), "-r");
title("Abs(F(x))");

figure;
plot(z, arg(F), "-y");
title("Arg(F(x))");
