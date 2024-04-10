#13
R_Kernel = Kernel';

Revers_F = R_Kernel * F * height;

plot(x, real(Revers_F));
figure;
plot(x, abs(Revers_F));
figure;
plot(x, arg(Revers_F));

