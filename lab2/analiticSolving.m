analaitic_F = -(abs(x) + 2*i*pi*abs(x).*X.*Z - 4*i*pi*X.*Z) /(8*pi*pi*X.*(Z.*Z) .* exp(2*i*pi*X.*Z));

plot(x(1:10:end), (f)(1:10:end), ".r; f(x);",
     z(1:10:end), real(analaitic_F(1:10:end)), "-y; analaitic F(x);");

