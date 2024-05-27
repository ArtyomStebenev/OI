#14

plot(x(1:10:end), (f)(1:10:end), ".r; f(x);",
     #z(1:10:end), (F)(1:10:end), ".b; F(z);",
     x(1:10:end), (Revers_F)(1:10:end), "-.y; reverse(f);");

