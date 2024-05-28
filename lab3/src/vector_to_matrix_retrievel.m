function result_matrix = vector_to_matrix_retrievel(n, BORDER, vector)
  # Consts
  r1 = 1;
  r2 = 1.5;
  r3 = 1.7;
  r4 = 4;
  h1 = 2;
  h2 = 1;
  m = 5;


  step = BORDER/n;

  k = [1:2*n-1];
  j = k';
  x = -BORDER + step * k;
  y = x';


  alfa = round(sqrt((j-n).^2 + (k-n).^2)) + 1;
  alfa = (alfa <= n) .* alfa;

  r_alfa = zeros(2*n-1, 2*n-1);
  r_alfa = (alfa-1) * step;

  result_matrix = r_alfa;
endfunction
