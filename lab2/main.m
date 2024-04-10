n = 1000;
left_border = -5;
right_border = 5;
step = (right_border - left_border)/n;

x = left_border:step:(right_border - step/2);

f = zeros(size(x));
f(x > -2 & x < 2) = 1-abs(x(x > -2 & x < 2) / 2);

plot(x(1:10:end), abs(f)(1:10:end), "-r; abs(f(x));",
     x(1:10:end), arg(f)(1:10:end), "-.y; Arg(f(x));");

integral = sum(step * f(1:n))

#добавить аналитику и сравнение численных и аналитических графиков
