#Вариант 7

#All consts
n = 50;
R_CONST = 5;
step = R_CONST/n;

r1 = 1;
r2 = 1.5;
r3 = 1.7;
r4 = 4;
h1 = 2;
h2 = 1;
m = 5;


r = step .* ([1:n] - 1); #just variable
f = h1 * get_Hankel_transform(r, r1, r2) + h2 * get_Hankel_transform(r, r3, r4);

plot(r(1:5:end), abs(f(1:5:end)));
figure;
plot(r(1:5:end), arg(f(1:5:end)));
