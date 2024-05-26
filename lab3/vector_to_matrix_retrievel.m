k = [1:2*n-1];
j = k';
x = -R_CONST + step * k;
y = x;




r_alfa = zeros(2*n-1, 2*n-1);
r_alfa = step * sqrt(x.^2 + y.^2);

#alfa = round() + 1;
#alfa = (alfa <= n) .* alfa;



f_alfa = (h1 * get_Hankel_transform(r_alfa, r1, r2)
       +  h2 * get_Hankel_transform(r_alfa, r3, r4));





matrix_f = zeros(2*n-1, 2*n-1);
line = [f(end:-1:2) f];
matrix_f(n, :) = line;
matrix_f(:, n) = line;

matrix_f *= exp(atan2(abs(n-k),abs(n-j))*i*m);


