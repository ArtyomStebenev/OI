#Вариант 7

# Consts
n = 500;
R_CONST = 5;
step = R_CONST/n;

r1 = 1;
r2 = 1.5;
r3 = 1.7;
r4 = 4;
h1 = 2;
h2 = 1;
m = 5;


# 5
r = step .* ([1:n] - 1);

f = h1 * get_function_indicator(r, r1, r2)
  + h2 * get_function_indicator(r, r3, r4); ;

plot(r(1:5:end), abs(f(1:5:end)), ".r; abs(f(r);");
figure;
plot(r(1:5:end), arg(f(1:5:end)), "-y; arg(f(x));");



# 8
r_alfa = vector_to_matrix_retrievel(n, R_CONST, r);
f_alfa_matrix = (h1 * get_function_indicator(r_alfa, r1, r2)
              +  h2 * get_function_indicator(r_alfa, r3, r4));
f_alfa_matrix .*= exp(atan2((k-n), (j-n)) * i*m);

figure;
imagesc(-R_CONST:step:R_CONST-step/2, -R_CONST:step:R_CONST-step/2, abs(f_alfa_matrix));
title("abs(f(alfa))");

figure;
imagesc(-R_CONST:step:R_CONST-step/2, -R_CONST:step:R_CONST-step/2, arg(f_alfa_matrix));
title("arg(f(alfa))");

