n = 1000;
left_border = -5;
right_border = 5;
step = (right_border - left_border)/n;

x = left_border:step:(right_border - step/2);

f = (x/2);
plot(x(1:10:end), abs(f)(1:10:end), "-r; f(x);",
     x(1:10:end), arg(f)(1:10:end), "-.y; Abs(f);");

summa = sum(step * f(1:n))


