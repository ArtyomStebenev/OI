P_CONST = 5;
step_ro = P_CONST/n;

# 9
ro = 0:step_ro:P_CONST-step_ro/2;


[Ro, R] = meshgrid(ro, r);
F_ro = (2*pi/i^m) * besselj(m, 2*pi* Ro .* R) .* r * f.' * step;
F_ro = F_ro.';

plot(ro, abs(F_ro));
figure;
plot(ro(1:5:end), arg(F_ro(1:5:end)));


# 12
F_ro_matrix = vector_to_matrix_retrievel(n, P_CONST, F_ro);

figure;
imagesc(-P_CONST:step_ro:P_CONST-step_ro/2, -P_CONST:step_ro:P_CONST-step_ro/2, abs(F_ro_matrix));
