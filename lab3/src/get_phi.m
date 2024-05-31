function phi = get_phi(n)
  k = [1:2*n-1];
  j = k';
  phi = atan2(k-n, j-n);
endfunction
