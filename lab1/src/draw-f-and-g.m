double_x = 2*x;
double_f = (16*double_x.^4 - 48*double_x.^2 + 12) .* exp(-double_x.^2/2);;
plot(double_x, f);

summa = f + g;
multiplication = f .* g;

figure;
plot(x(1:10:end), f(1:10:end), "-r; f(x);",
     x(1:10:end), g(1:10:end), "-.b; g(x);");
title("f(x) and g(x)");

figure;
plot(x(1:30:end), summa(1:30:end), "dg;f(x) + g(x);");

figure;
plot(x(1:15:end), multiplication(1:15:end), ":+m; f(x) .* g(x);");

