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
  
  Y_interpolate_linear_grid=interpolate(X_linear_grid,Y_linear_grid,x);
  
  #Сhebyshev grid (n)
  
  X_cheb_grid=cheb_grid(a,b,n);
  for i=1:numel(X_cheb_grid)
    Y_cheb_grid(i)=my_func(X_cheb_grid(i));
  endfor
  
  Y_interpolate_cheb_grid=interpolate(X_cheb_grid,Y_cheb_grid, x);
  
  figure(1)
  plot(x, y,";y = exp(-abs(x));", x, Y_interpolate_linear_grid,";y = exp(-abs(x)) - Linear grid;", x, Y_interpolate_cheb_grid,";y = exp(-abs(x)) - Сhebyshev grid;")
  title ('y = exp(-abs(x)) -> -5:0.005:1 , n');
  grid on
  
  #Error Linear grid (n)
  
  for i=1:numel(Y_interpolate_linear_grid)
    Error_interpolate_linear_grid(i)=abs(y(i)-Y_interpolate_linear_grid(i));
  endfor
  
  #Error Сhebyshev grid (n)
  
  for i=1:numel(Y_interpolate_cheb_grid)
    Error_interpolate_cheb_grid(i)=abs(y(i)-Y_interpolate_cheb_grid(i));
  endfor
  
  figure(2)
  plot(x, log10(abs(Error_interpolate_linear_grid)),";Error interpolate linear grid;", x, log10(abs(Error_interpolate_cheb_grid)),";Error interpolate Сhebyshev grid;")
  title ('Error interpolate linear grid and Error interpolate Сhebyshev grid -> -5:0.005:1 , n');
  grid on
  
  n = n + 10;
  
  #Linear grid (n + 10)
 
  X_linear_grid=linear_grid(a,b,n);
  for i=1:numel(X_linear_grid)
    Y_linear_grid(i)=my_func(X_linear_grid(i));
  endfor 
  
  Y_interpolate_Linear_grid=interpolate(X_linear_grid,Y_linear_grid,x);
  
  #Сhebyshev grid (n + 10)
  
  X_cheb_grid=cheb_grid(a,b,n);
  for i=1:numel(X_cheb_grid)
    Y_cheb_grid(i)=my_func(X_cheb_grid(i));
  endfor
  
  Y_interpolate_cheb_grid=interpolate(X_cheb_grid,Y_cheb_grid, x);
  
  figure(3)
  plot(x, y,";y = exp(-abs(x));", x, Y_interpolate_Linear_grid,";y = exp(-abs(x)) - Linear grid;", x, Y_interpolate_cheb_grid,";y = exp(-abs(x)) - Сhebyshev grid;")
  title ('y = exp(-abs(x)) -> -5:0.005:1 , n + 10');
  grid on
  
  #Error interpolate Linear grid (n + 10)
  
  for i=1:numel(Y_interpolate_linear_grid)
    Error_interpolate_linear_grid(i)=abs(y(i)-Y_interpolate_linear_grid(i));
  endfor
  
  #Error interpolate Сhebyshev grid (n + 10)
  
  for i=1:numel(Y_interpolate_cheb_grid)
    Error_interpolate_cheb_grid(i)=abs(y(i)-Y_interpolate_cheb_grid(i));
  endfor
  
  figure(4)
  plot(x, log10(abs(Error_interpolate_linear_grid)),";Error interpolate linear grid;", x, log10(abs(Error_interpolate_cheb_grid)),";Error interpolate Сhebyshev grid;")
  title ('Error interpolate linear grid and Error interpolate Сhebyshev grid -> -5:0.005:1, n + 10');
  grid on
  
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