P_CONST = 5;
step_ro = P_CONST/n;

# 9
ro = 0:step_ro:P_CONST-step_ro/2;


Kernel = besselj(m, 2*pi* r .* ro') .* r;
F_ro = (2*pi/i^m) * Kernel * (f_alfa_matrix ./ exp(atan2((k-n), (j-n)) * i*m)) * step;
F_ro = F_ro.';

plot(ro(1:5:end), abs(F_ro(1:5:end)), "-r; arg(F(ro));");
figure;
plot(ro(1:5:end), arg(F_ro(1:5:end)), "-y; arg(F(ro));");


# 12
ro_alfa = vector_to_matrix_retrievel(n, P_CONST, ro);
Kernel = besselj(m, 2*pi* r .* ro') .* r;
F_ro = (2*pi/i^m) * Kernel * f_matrix.' * step;
F_ro_matrix


figure;
imagesc(-P_CONST:step_ro:P_CONST-step_ro/2, -P_CONST:step_ro:P_CONST-step_ro/2, abs(F_ro_matrix));
title("abs(F(ro))");

figure;
imagesc(-P_CONST:step_ro:P_CONST-step_ro/2, -P_CONST:step_ro:P_CONST-step_ro/2, arg(F_ro_matrix));
title("arg(F(ro))");
