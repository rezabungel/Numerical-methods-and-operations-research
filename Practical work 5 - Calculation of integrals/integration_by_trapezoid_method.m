# Вычисление интеграла методом трапеций.
# Формула:

# I = step * ( ((f0)/2) + f1 + ... + fn-1 + ((fn)/2) )

# a - нижний предел интегрирования.
# b - верхний предел интегрирования.
# step - шаг интегрирования.

function value_integral = integration_by_trapezoid_method(a,b,step)
  
  # Создание равномерной сетки [a,b] с шагом step.
  grid = a:step:b;
  
  # Значение функции в узлах равномерной сетки.
  f = zeros(1, numel(grid));
  for i=1:numel(grid)
    f(i) = my_func(grid(i));
  endfor

  # Вычисление интеграла методом трапеций.
  value_integral = 0;
  for i = 2:(numel(f)-1)
    value_integral = value_integral + f(i);
  endfor
  value_integral = value_integral + ((f(1) + f(numel(f)))/2);  
  value_integral = value_integral * step;
  
  endfunction