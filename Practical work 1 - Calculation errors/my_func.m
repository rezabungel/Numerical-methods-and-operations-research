#my_func: (x)*sin(x) at x=3
function res=my_func(x,n)
  res = 0;
  for i=1:n
    #res=res+x*(((-1)^(i-1)*cos(3)*(x-3)^(2*(i-1)+1))/factorial(2*(i-1)+1)+((-1)^(i-1)*sin(3)*(x-3)^(2*(i-1)))/factorial(2*(i-1)));
    res = res + x*(-3+x)^(i-1)*sin(3+((i-1)*pi/2))/factorial(i-1);
  endfor
endfunction
