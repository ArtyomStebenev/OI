analitic_F = 2 * sinc(2*z).^2;

plot(z(1:4:end), abs(F)(1:4:end), ".r; abs(F(z));",
     z(1:4:end), abs(analitic_F(1:4:end)), "-y; analitic abs(F(z));");


figure;
plot(z(1:2:end), arg(F)(1:2:end), ".b; arg(F(z));",
     z(1:2:end), arg(analitic_F(1:2:end)), "-g; analitic arg(F(z));");

