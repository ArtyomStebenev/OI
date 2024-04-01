R = sqrt(X.^2+Y.^2);
Fh = atan2(Y, X);

fr = (16*R.^4 - 48*R.^2 + 12) .* exp(-R.^2/2);
H = fr .* exp(i*m .* Fh);

imagesc(x, y, real(H));
title("Re(H(r))");

figure;
imagesc(x, y, imag(H));
title("Im(H(r))");

figure;
imagesc(x, y, abs(H));
title("Abs(H(r))");

figure;
imagesc(x, y, arg(H));
title("Arg(H(r))");

