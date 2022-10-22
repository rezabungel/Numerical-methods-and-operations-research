# Вычисление Евклидовой или p2 нормы вектора.
# V - вектор.

function value_norm = vector_p2_norm(V)
  value_norm = 0;
  
  for i = 1 :numel(V)
      value_norm = value_norm + (V(i))^2;
  endfor
  value_norm = sqrt(value_norm);
  
  endfunction