# Методом Эйлера-Коши (модифицированный метод Эйлера, метод Эйлера с пересчетом).

# Начальные условия для задачи Коши.
# x - точка, в которой вычислены y(x) и y'(x)
# y = [y(x), y'(x)]

# step - шаг
# Xend - до какой точки ищем решение.

function [y_value, error] = method_Euler_Cauchy(x, y, step, xEND)
  i=1;
  y_value(i)=y(1);
  error(i)=abs(y_value(i)-function_obtained_analytically(x));
  x=x+step; 
  i=i+1;

  for k = x:step:xEND
    y=y+(step/2)*(f(x,y)+f(x+step,y+step*f(x,y)));
    y_value(i)=y(1);
    error(i)=abs(y_value(i)-function_obtained_analytically(x));
    x=x+step;
    i=i+1;
  endfor
  
  endfunction
