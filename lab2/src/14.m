#14

plot(x(1:10:end), (f)(1:10:end), ".r",
     x(1:10:end), (Revers_F)(1:10:end), "-.y");
title("f(x) and reverse f(x)");
legend('f(x)', 'reverse(f)', 'Location', 'bestoutside')

