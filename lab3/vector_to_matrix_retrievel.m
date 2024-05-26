k = [1:2*n-1];
j = k';
x = -R_CONST + step * k;
y = x';

ax = -R_CONST:step:R_CONST-step/2;

alfa = round(sqrt((j-n).^2 + (k-n).^2)) + 1;
alfa = (alfa <= n) .* alfa;

r_alfa = zeros(2*n-1, 2*n-1);
r_alfa = (alfa-1) * step;


f_alfa = (h1 * get_Hankel_transform(r_alfa, r1, r2)
       +  h2 * get_Hankel_transform(r_alfa, r3, r4));


#matrix_f = zeros(2*n-1, 2*n-1);
matrix_f = f_alfa;
line = [f(end:-1:2) f];
matrix_f(n, :) = line;
matrix_f(:, n) = line;

figure;
imagesc(ax, ax, abs(matrix_f));


matrix_f .*= exp(atan2(abs(n-k),abs(n-j))*i*m);

figure;
imagesc(ax, ax, abs(matrix_f));


