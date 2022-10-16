# Вычисление максимальной или бесконечной нормы вектора.
# V - вектор.

function value_norm = vector_p_infinity_norm(V)
  
  value_norm = max(abs(V));
  
  endfunction