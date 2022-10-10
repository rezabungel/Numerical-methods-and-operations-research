#Подпрограмма, выдающая вектор n равномерно распределенных точек на отрезке [a,b]. (n - не вектора, а кол-во равномерно распределенных точек).
function point = linear_grid(a,b,n)
  
  if n <= 1
    disp("There must be more than 1 point.");
    disp("Equate the number of points to 2.");
    n = 2
  endif
  
  point = zeros (1, n);
  step = (b-a)/(n-1);
  point(1) = a;
  
  for i=2:n
    point(i) = point(i-1) + step;
  endfor
  
  endfunction