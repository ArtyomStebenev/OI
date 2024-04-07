#10
F = Kernel * f' * step;

imagesc(x, z, real(F));
figure;
imagesc(x, z, abs(F));
figure;
imagesc(x, z, arg(F));

