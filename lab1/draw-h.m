h = f .* exp(i .* x);

plot(x(1:5:end), real(h(1:5:end)), "-g; Re(h);",
     x(1:5:end), arg(h)(1:5:end), ".b; Arg(h);");
title("h(x) = f(x)*exp(ix)");

figure;
plot(x(1:5:end), imag(h(1:5:end)), "-m; Im(h);",

figure;
plot(x(1:5:end), abs(h)(1:5:end), "-.r; Abs(h);",


