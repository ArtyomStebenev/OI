#8
m = 500;
p = -5;
q = 5;
height = (q - p)/m;

z = p:height:(q - height);

[X, Z] = meshgrid(x, z);
Kernel = exp(-i * 2 * pi * X .* Z);


imagesc(x, z, abs(Kernel));
title("Abs(Kernel)");
figure;
imagesc(x, z, arg(Kernel));
title("Arg(Kernel)");

