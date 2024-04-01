n = 1000;
left_border = -10;
right_border = 10;
step = (right_border - left_border)/n;

x = left_border:step:(right_border - step/2);
y = x;

f = (16*x.^4 - 48*x.^2 + 12) .* exp(-x.^2/2);
g = besselj(1, x);
m = 6;


# осталось написать отчет 02.04
# в отчете должно быть пояснение всех графиков
# особенно аргументы
# пояснить за число m - оно влияет на количество разрывов в кольце

