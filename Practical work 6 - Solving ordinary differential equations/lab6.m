# Численно решить задачу Коши для обыкновенного дифференциального уравнения методом Эйлера-Коши (модифицированный метод Эйлера, метод Эйлера с пересчетом).
# y''+y'=sin(x)

# Начальные условия для задачи Коши.
# x - точка, в которой вычислены y(x) и y'(x)
# y = [y(x), y'(x)]

# Xend - до какой точки ищем решение.

function lab6(x, y, xEND)
  
  step = [0.1, 0.01 ,0.001];
  y_value_from_method_Euler_Cauchy=zeros(1,numel(step));
  
  # Построение графика функции аналитического решения дифференциального уравнения.
  grid_x = x:0.005:xEND;
  for i=1:numel(grid_x)
    y_value(i)=function_obtained_analytically(grid_x(i));
  endfor 
  
  # Решение задачи Коши для обыкновенного дифференциального уравнения методом Эйлера-Коши для разных шагов.
  [y_value_from_method_Euler_Cauchy_step1, error_method_Euler_Cauchy_step1] = method_Euler_Cauchy(x, y, step(1), xEND);
  grid_x_step1=x:step(1):xEND;
  [y_value_from_method_Euler_Cauchy_step2, error_method_Euler_Cauchy_step2] = method_Euler_Cauchy(x, y, step(2), xEND);
  grid_x_step2=x:step(2):xEND;
  [y_value_from_method_Euler_Cauchy_step3, error_method_Euler_Cauchy_step3] = method_Euler_Cauchy(x, y, step(3), xEND);
  grid_x_step3=x:step(3):xEND;
  
  figure(1)
  plot (grid_x, y_value,";Graph of the function calculated analytically;", grid_x_step1, y_value_from_method_Euler_Cauchy_step1, ";Solving the Cauchy problem by the Euler-Cauchy method with a step of 0.1;", grid_x_step2, y_value_from_method_Euler_Cauchy_step2, ";Solving the Cauchy problem by the Euler-Cauchy method with a step of 0.01;", grid_x_step3, y_value_from_method_Euler_Cauchy_step3, ";Solving the Cauchy problem by the Euler-Cauchy method with a step of 0.001;")
  title ('График аналитического решения дифференциального уравнения второго порядка и решения, полученного методом Эйлера-Коши, для разных шагов. Графики построены на интервале [x, xEND].');
  legend ("location", "northwest", "fontsize", 7); # Вывод легенды на графике в левом верхнем углу, для лучшей читаемости.
  grid on  
  
  figure(2)
  plot(grid_x_step1, log10(abs(error_method_Euler_Cauchy_step1)), ";Error method Euler-Cauchy (step of 0.1);", grid_x_step2, log10(abs(error_method_Euler_Cauchy_step2)), ";Error method Euler-Cauchy (step of 0.01);", grid_x_step3, log10(abs(error_method_Euler_Cauchy_step3)),";Error method Euler-Cauchy (step of 0.001);")
  title('График зависимости модуля абсолютной ошибки между значением, полученным с помощью метода Эйлера-Коши, и аналитическим значением.')
  legend("location", "southeast", "fontsize", 7); # Вывод легенды на графике в правом нижнем углу для лучшей читаемости.
  grid on
  
  endfunction

  
  
  ###########################
  #*********in main*********#
  #  lab6(0, [1,-1], 100)   #
  ########################### 