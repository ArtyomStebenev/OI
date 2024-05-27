#10
F = Kernel * f.' * step;

plot(z, real(F));
figure;
plot(z, abs(F));
figure;
plot(z, arg(F));

