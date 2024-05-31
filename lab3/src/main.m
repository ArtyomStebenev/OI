#Вариант 7

# Consts
n = 500;
R_CONST = 5;
step_r = R_CONST/n;

#{ r1 = 1;
r2 = 1.5;
r3 = 1.7;
r4 = 4;
h1 = 2;
h2 = 1;
m = 5; #}

r1=1;
r2=1.5;
r3=1.7;
r4=4;
h1=2;
h2=1;
m=4;


# 5
r = step_r .* ([1:n] - 1);
f = h1 * get_function_indicator(r, r1, r2) + h2 * get_function_indicator(r, r3, r4);

plot(r(1:5:end), abs(f(1:5:end)), ".r; abs(f(r);");
figure;
plot(r(1:5:end), arg(f(1:5:end)), "-y; arg(f(x));");



# 8
r_alfa = get_alfa_matrix(n, R_CONST);


f_alfa = (h1 * get_function_indicator(r_alfa, r1, r2)
       +  h2 * get_function_indicator(r_alfa, r3, r4));
f_alfa .*= exp(i*m * get_phi(n));


figure;
imagesc(-R_CONST:step_r:R_CONST, -R_CONST:step_r:R_CONST, abs(f_alfa));
title("abs(f(alfa))");

figure;
imagesc(-R_CONST:step_r:R_CONST, -R_CONST:step_r:R_CONST, arg(f_alfa));
title("arg(f(alfa))");

