#13
R_Kernel = exp(i * 2 * pi * X .* Z);

Revers_F = F' * R_Kernel * height;

plot(x, real(Revers_F));
figure;
plot(x, abs(Revers_F));
figure;
plot(x, arg(Revers_F));

