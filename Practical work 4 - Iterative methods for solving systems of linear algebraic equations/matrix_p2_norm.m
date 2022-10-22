# Функция не пригодилась для задания.

# Вычисление второй нормы матрицы.
# M - матрица.

function value_norm = matrix_p2_norm(M)
  
  value_norm = sqrt(max(eig(M'*M)));
  
  endfunction