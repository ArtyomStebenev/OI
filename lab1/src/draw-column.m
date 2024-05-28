column = H(500, :);

plot(x(1:10:end), real(column)(1:10:end), "-g");
title("Re(column)");


figure;
plot(x(1:10:end), imag(column)(1:10:end), "-m");
title("Im(column)");


figure;
plot(x(1:10:end), abs(column)(1:10:end), "-.r");
title("Abs(column)");


figure;
plot(x(1:10:end), arg(column)(1:10:end), ".b");
title("Arg(column)");


