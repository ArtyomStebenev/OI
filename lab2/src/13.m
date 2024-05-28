#13
R_Kernel = Kernel';

Revers_f = R_Kernel * F * height;

plot(x, real(Revers_f));
title("revers Real(f(x))");

figure;
plot(x, abs(Revers_f), "-r");
title("revers Abs(f(x))");

figure;
plot(x, arg(Revers_f), "-y");
title("revers Arg(f(x))");
