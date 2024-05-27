function result_matrix = vector_to_matrix_retrievel(n, R_CONST, f)
  # Consts
  r1 = 1;
  r2 = 1.5;
  r3 = 1.7;
  r4 = 4;
  h1 = 2;
  h2 = 1;
  m = 5;


  step = R_CONST/n;

  k = [1:2*n-1];
  j = k';
  x = -R_CONST + step * k;
  y = x';


  alfa = round(sqrt((j-n).^2 + (k-n).^2)) + 1;
  alfa = (alfa <= n) .* alfa;

  r_alfa = zeros(2*n-1, 2*n-1);
  r_alfa = (alfa-1) * step;


  f_alfa = (h1 * get_function_indicator(r_alfa, r1, r2)
         +  h2 * get_function_indicator(r_alfa, r3, r4));

  line = [f(end:-1:2) f];
  f_alfa(n, :) = line;
  f_alfa(:, n) = line;
  #imagesc(-R_CONST:step:R_CONST-step/2, -R_CONST:step:R_CONST-step/2, abs(f_alfa));

  f_alfa .*= exp(atan2(abs(n-k), abs(n-j)) * i*m);

  result_matrix = f_alfa;
endfunction
