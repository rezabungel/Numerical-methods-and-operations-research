#[a,b] - интервал
#n - кол-во точек, по которым строим интерполянт
function lab3(a,b,n)
  
  ####################
  #      in main     #
  #   lab3(-5,1,5)   #
  ####################
  
  #My_function

  x= -5:0.005:1;
  for i=1:numel(x)
    y(i)=my_func(x(i));
  endfor 
  
  #Linear grid (n)
 
  X_linear_grid=linear_grid(a,b,n);
  for i=1:numel(X_linear_grid)
    Y_linear_grid(i)=my_func(X_linear_grid(i));
  endfor 
  
  Y_interpolate_Linear_grid_n=interpolate(X_linear_grid,Y_linear_grid,x);
  
  #Error Linear grid (n)
  
  for i=1:numel(Y_interpolate_Linear_grid_n)
    Error_interpolate_Linear_grid_n(i)=abs(y(i)-Y_interpolate_Linear_grid_n(i));
  endfor
  
  n = n + 10;
  
  #Linear grid (n + 10)
 
  X_linear_grid=linear_grid(a,b,n);
  for i=1:numel(X_linear_grid)
    Y_linear_grid(i)=my_func(X_linear_grid(i));
  endfor 
  
  Y_interpolate_Linear_grid_n10=interpolate(X_linear_grid,Y_linear_grid,x);
  
  #Error interpolate Linear grid (n + 10)
  
  for i=1:numel(Y_interpolate_Linear_grid_n10)
    Error_interpolate_Linear_grid_n10(i)=abs(y(i)-Y_interpolate_Linear_grid_n10(i));
  endfor
  
  n = n + 5; # n=n-10+15 
  
  #Linear grid (n + 15)
 
  X_linear_grid=linear_grid(a,b,n);
  for i=1:numel(X_linear_grid)
    Y_linear_grid(i)=my_func(X_linear_grid(i));
  endfor 
  
  Y_interpolate_Linear_grid_n15=interpolate(X_linear_grid,Y_linear_grid,x);
  
  #Error interpolate Linear grid (n + 15)
  
  for i=1:numel(Y_interpolate_Linear_grid_n15)
    Error_interpolate_Linear_grid_n15(i)=abs(y(i)-Y_interpolate_Linear_grid_n15(i));
  endfor
  
  figure(1)
  plot(x, y,";y = exp(-abs(x));", x, Y_interpolate_Linear_grid_n,";y = exp(-abs(x)) - Linear grid -> (n);", x, Y_interpolate_Linear_grid_n10,";y = exp(-abs(x)) - Linear grid -> (n + 10);", x, Y_interpolate_Linear_grid_n15,";y = exp(-abs(x)) - Linear grid -> (n + 15);")
  title ('y = exp(-abs(x)) -> Linear grid -> -5:0.005:1 ,n, n+10, n+15');
  legend ("location", "northwest"); # Вывод легенды на графике в левом верхнем углу, для лучшей читаемости.
  grid on
  
  figure(2)
  plot(x, log10(abs(Error_interpolate_Linear_grid_n)),";Error interpolate Linear grid -> (n);", x, log10(abs(Error_interpolate_Linear_grid_n10)),";Error interpolate Linear grid -> (n + 10);", x, log10(abs(Error_interpolate_Linear_grid_n15)),";Error interpolate Linear grid -> (n + 15);")
  title ('Error interpolate Linear grid for n, n+10, n+15 -> -5:0.005:1');
  legend("location", "southeast", "fontsize", 8.5); # Вывод легенды на графике в правом нижнем углу, для лучшей читаемости.
  grid on
  
  n = n - 15;
  
  #Сhebyshev grid (n)
  
  X_cheb_grid=cheb_grid(a,b,n);
  for i=1:numel(X_cheb_grid)
    Y_cheb_grid(i)=my_func(X_cheb_grid(i));
  endfor
  
  Y_interpolate_cheb_grid_n=interpolate(X_cheb_grid,Y_cheb_grid, x);
  
  #Error Сhebyshev grid (n)
  
  for i=1:numel(Y_interpolate_cheb_grid_n)
    Error_interpolate_cheb_grid_n(i)=abs(y(i)-Y_interpolate_cheb_grid_n(i));
  endfor
  
  n = n + 10;
  
  #Сhebyshev grid (n + 10)
  
  X_cheb_grid=cheb_grid(a,b,n);
  for i=1:numel(X_cheb_grid)
    Y_cheb_grid(i)=my_func(X_cheb_grid(i));
  endfor
  
  Y_interpolate_cheb_grid_n10=interpolate(X_cheb_grid,Y_cheb_grid, x);
  
  #Error Сhebyshev grid (n + 10)
  
  for i=1:numel(Y_interpolate_cheb_grid_n10)
    Error_interpolate_cheb_grid_n10(i)=abs(y(i)-Y_interpolate_cheb_grid_n10(i));
  endfor
  
  n = n + 5; # n=n-10+15
  
  #Сhebyshev grid (n + 15)
  
  X_cheb_grid=cheb_grid(a,b,n);
  for i=1:numel(X_cheb_grid)
    Y_cheb_grid(i)=my_func(X_cheb_grid(i));
  endfor
  
  Y_interpolate_cheb_grid_n15=interpolate(X_cheb_grid,Y_cheb_grid, x);
  
  #Error Сhebyshev grid (n + 15)
  
  for i=1:numel(Y_interpolate_cheb_grid_n15)
    Error_interpolate_cheb_grid_n15(i)=abs(y(i)-Y_interpolate_cheb_grid_n15(i));
  endfor
  
  figure(3)
  plot(x, y,";y = exp(-abs(x));", x, Y_interpolate_cheb_grid_n,";y = exp(-abs(x)) - Сhebyshev grid -> (n);", x, Y_interpolate_cheb_grid_n10,";y = exp(-abs(x)) - Сhebyshev grid -> (n + 10);", x, Y_interpolate_cheb_grid_n15,";y = exp(-abs(x)) - Сhebyshev grid -> (n + 15);")
  title ('y = exp(-abs(x)) -> Сhebyshev grid -> -5:0.005:1 ,n, n+10, n+15');
  legend ("location", "northwest"); # Вывод легенды на графике в левом верхнем углу, для лучшей читаемости.
  grid on
  
  figure(4)
  plot(x, log10(abs(Error_interpolate_cheb_grid_n)),";Error interpolate Сhebyshev grid -> (n);", x, log10(abs(Error_interpolate_cheb_grid_n10)),";Error interpolate Сhebyshev grid -> (n + 10);", x, log10(abs(Error_interpolate_cheb_grid_n15)),";Error interpolate Сhebyshev grid -> (n + 15);")
  title ('Error interpolate Сhebyshev grid for n, n+10, n+15 -> -5:0.005:1');
  legend("location", "southwest", "fontsize", 8); # Вывод легенды на графике в левом нижнем углу, для лучшей читаемости.
  grid on
  
  n = n - 15;
  
  #MAX Error interpolate Linear grid (n = [2:30])
  for n = 2:30
    X_linear_grid=linear_grid(a,b,n);
    for i=1:numel(X_linear_grid)
      Y_linear_grid(i)=my_func(X_linear_grid(i));
    endfor 
      Y_interpolate_linear_grid=interpolate(X_linear_grid,Y_linear_grid,x);
    
    for i=1:numel(Y_interpolate_linear_grid)
      Error_interpolate_linear_grid(i)=abs(y(i)-Y_interpolate_linear_grid(i));
    endfor
    
    MAX_Error_interpolate_linear_grid(n)=max(Error_interpolate_linear_grid);
  endfor
  
  #MAX Error interpolate Сhebyshev grid (n = [2:30]) 
  for n = 2:30
    X_cheb_grid=cheb_grid(a,b,n);
    for i=1:numel(X_cheb_grid)
      Y_cheb_grid(i)=my_func(X_cheb_grid(i));
    endfor
    Y_interpolate_cheb_grid=interpolate(X_cheb_grid,Y_cheb_grid, x);
    
    for i=1:numel(Y_interpolate_cheb_grid)
      Error_interpolate_cheb_grid(i)=abs(y(i)-Y_interpolate_cheb_grid(i));
    endfor
    
    MAX_Error_interpolate_cheb_grid(n)=max(Error_interpolate_cheb_grid);
  endfor
  
  figure(5)
  plot(2:30, log10(abs(MAX_Error_interpolate_linear_grid(2:30))),";MAX Error interpolate linear grid n = [2:30];", 2:30, log10(abs(MAX_Error_interpolate_cheb_grid(2:30))),";MAX Error interpolate Сhebyshev grid n = [2:30];")
  title ('MAX Error interpolate linear grid and MAX Error interpolate Сhebyshev grid -> -5:0.005:1, n = [2:30]');
  grid on
  
  endfunction