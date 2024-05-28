function result_vector = F_ro(r, ro, f, step, m)
    Kernel = besselj(m, 2*pi* r .* ro') .* r;
    F_ro = (2*pi/i^m) * Kernel * f.' * step;
    
    result_vector = F_ro.';
endfunction