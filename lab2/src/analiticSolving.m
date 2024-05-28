analitic_F = 2 * sinc(2*z).^2;

plot(z(1:2:end), abs(F)(1:2:end), ".r",
     z(1:4:end), abs(analitic_F(1:4:end)), "-y");
title("digital and analitic Abs(F(z))");
legend('digital', 'analitic', 'Location', 'bestoutside');


figure;
plot(z(1:10:end), arg(F)(1:10:end), ".b",
     z(1:2:end), arg(analitic_F(1:2:end)), "-g");
title("digital and analitic Arg(F(z))");
legend('digital', 'analitic', 'Location', 'bestoutside');
