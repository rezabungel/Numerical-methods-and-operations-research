# Вычисление матричной нормы Фробениуса.
# M - матрица.

function value_norm = matrix_Frobenius_norm(M)
  value_norm = 0;
  
  for i = 1 :numel(M(1,:))
    for j = 1:numel(M(1,:))
      value_norm = value_norm + (M(i,j))^2;
    endfor
  endfor
  value_norm = sqrt(value_norm);
  
  endfunction