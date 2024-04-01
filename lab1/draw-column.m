column = H(500, :);

plot(x(1:10:end), real(column)(1:10:end), "-g; Re(column);",
     x(1:10:end), imag(column)(1:10:end), "-m; Im(column);",
     x(1:10:end), abs(column)(1:10:end), "-.r; Abs(column);",
     x(1:10:end), arg(column)(1:10:end), ".b; Arg(column);");
