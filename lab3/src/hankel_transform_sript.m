P_CONST = 5;
step_ro = P_CONST/n;

# 9
ro = 0:step_ro:P_CONST-step_ro/2;

Kernel = besselj(m, 2*pi* r .* ro') .* r;
F_ro = (2*pi/i^m) * Kernel * f.' * step_r;
F_ro = F_ro.';

%plot(ro(1:5:end), abs(F_ro(1:5:end)), "-r; arg(F(ro));");
#figure;
#plot(ro(1:5:end), arg(F_ro(1:5:end)), "-y; arg(F(ro));");


# 12
ro_alfa = get_alfa_matrix(n, P_CONST);

Kernel_matrix = besselj(m, 2*pi* r_alfa .* ro_alfa.') .* r_alfa;
F_alfa = (2*pi/i^m) * Kernel_matrix .* f_alfa.' * step_ro;
F_alfa = F_alfa.';
F_alfa .*= exp(i*m * get_phi(n));



figure;
imagesc(-P_CONST:step_ro:P_CONST, -P_CONST:step_ro:P_CONST, abs(F_alfa));
title("abs(F(ro))");

figure;
imagesc(-P_CONST:step_ro:P_CONST, -P_CONST:step_ro:P_CONST, arg(F_alfa));
title("arg(F(ro))");
