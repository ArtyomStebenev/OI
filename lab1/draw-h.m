h = f .* exp(i .* x);

plot(x(1:5:end), real(f)(1:5:end), "-g; Re(f);",
     x(1:5:end), arg(f)(1:5:end), ".b; Arg(f);");
figure;
plot(x(1:5:end), imag(f)(1:5:end), "-m; Im(f);");
figure;
plot(x(1:5:end), abs(f)(1:5:end), "-.r; Abs(f);");



figure;
plot(x(1:5:end), real(h(1:5:end)), "-g; Re(h);",
     x(1:5:end), imag(h(1:5:end)), "-m; Im(h);",
     x(1:5:end), abs(h)(1:5:end), "-.r; Abs(h);",
     x(1:5:end), arg(h)(1:5:end), ".b; Arg(h);");
title("h(x) = f(x)*exp(ix)");
