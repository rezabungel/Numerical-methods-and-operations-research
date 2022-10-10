function lab1(x,n)
  errors=zeros(n,1);
  formula=x*sin(x);
  for i=1:n
    errors(i)=abs(formula-my_func(x,i));
  endfor

  errors_r=zeros(n, 1);
  formula_r=x*sin(x);
  for i=1:n
    errors_r(i)=abs(formula_r-my_func_r(x, i));
  endfor

  figure(1)
  plot([1:n],errors, [1:n], errors_r)
  title ('(Красный -> revers) Остаточный член (погрешность) -> Rn(x)=f(x)-Tn(x)');
  grid on

  figure(2)
  plot([1:n],log10(abs(errors)), [1:n],log10(abs(errors_r)))
  title ('(Красный -> revers) График зависимости десятичного логарифма абсолютной ошибки -> lg|f(x0)-S(n)|'); #S(n) - частичная сумма.
  grid on
endfunction



  ###################
  #*****in main*****#
  #    lab1(4,30)   #
  ###################
