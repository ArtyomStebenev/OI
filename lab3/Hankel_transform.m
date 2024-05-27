P_CONST = 5;
step_ro = P_CONST/n;

# 9
ro = 0:step_ro:P_CONST-step_ro/2;

F_ro = (2*pi/i^m) * sum(f .* besselj(m, 2*pi*r*ro') .* r * step);

plot(ro(1:5:end), abs(F_ro(1:5:end)));
figure;
plot(ro(1:5:end), arg(F_ro(1:5:end)));


# 12
F_ro_matrix = vector_to_matrix_retrievel(n, P_CONST, F_ro);

figure;
imagesc(-P_CONST:step_ro:P_CONST-step_ro/2, -P_CONST:step_ro:P_CONST-step_ro/2, abs(F_ro_matrix));
