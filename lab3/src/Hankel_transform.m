P_CONST = 5;
step_ro = P_CONST/n;

# 9
ro = 0:step_ro:P_CONST-step_ro/2;


[Ro, R] = meshgrid(ro, r);
F_ro = (2*pi/i^m) * besselj(m, 2*pi* Ro .* R) .* r * f.' * step;
F_ro = F_ro.';

plot(ro(1:5:end), abs(F_ro(1:5:end)), "-r; arg(F(ro));");
figure;
plot(ro(1:5:end), arg(F_ro(1:5:end)), "-y; arg(F(ro));");


# 12
F_ro_matrix = vector_to_matrix_retrievel(n, P_CONST, F_ro);

figure;
imagesc(-P_CONST:step_ro:P_CONST-step_ro/2, -P_CONST:step_ro:P_CONST-step_ro/2,
                                           abs(F_ro_matrix));
title("abs(F(ro))");

figure;
imagesc(-P_CONST:step_ro:P_CONST-step_ro/2, -P_CONST:step_ro:P_CONST-step_ro/2,
                                           arg(F_ro_matrix));
title("arg(F(ro))");