function result_matrix = get_alfa_matrix(n, BORDER)
  step = BORDER/n;

  k = [1:2*n-1];
  j = k';


  alfa = round(sqrt((j-n).^2 + (k-n).^2)) + 1;
  alfa = (alfa <= n) .* alfa;

  alfa_matrix = zeros(2*n-1, 2*n-1);
  alfa_matrix = (alfa-1) * step;

  result_matrix = alfa_matrix;
endfunction
