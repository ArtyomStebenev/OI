plot(x(1:10:end), real(f)(1:10:end), "-g; Re(f(x));");
legend("Location", "northeastoutside");

figure;
plot(x(1:10:end), imag(f)(1:10:end), "-m; Im(f(x));");
legend("Location", "northeastoutside");

figure;
plot(x(1:10:end), abs(f)(1:10:end), "-.r; Abs(f(x));");
legend("Location", "northeastoutside");

figure;
plot(x(1:10:end), arg(f)(1:10:end), ".b; Arg(f(x));");
legend("Location", "northeastoutside");
