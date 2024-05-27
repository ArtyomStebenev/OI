#true answer F = -(abs(x) + 2*i*pi*x*z*abs(x) - 4*i*pi*z*x) / (8*pi^2*x*z^2*exp(2*i*pi*x*z))
#analitic_F = -(abs(x) + 2i*pi*(X .* Z) * abs(x).' - 4i*pi*Z * x.') ./ (8*pi^2*exp(2i*pi*X .* Z) * (X .* Z)' * (z.^2)');

#plot(z(1:10:end), real(F)(1:10:end), ".r; F(z);",
#     z(1:10:end), abs(analitic_F(1:10:end)), "-y; analitic F(z);");

#zxc = (abs(x) + 2i * pi * X .* Z .* abs(x) - 4i * pi * X .* Z) ./ (8 * pi^2 * X .* Z.^2 .* exp(2i * pi * X .* Z));


