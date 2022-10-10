#Аналогичная программа, выдающая узлы интерполяции, найденные с помощью Чебышевской сетки.
function point = cheb_grid(a,b,n)
  
  if n <= 1
    disp("There must be more than 1 point.");
    disp("Equate the number of points to 2.");
    n = 2
  endif
  
  point = zeros (1, n);
  for i = 0:n-1
    point(i+1) = -cos(((2*i+1)*pi)/(2*n));
  endfor
  
  for i = 1:n
    point(i)=(a+b)/2+((b-a)*point(i))/2;
  endfor  
 
  endfunction