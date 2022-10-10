#p1 - closer to the root on the right
#p2 - further to the root on the right
function lab2(p1,p2)
  [error_bisection, nevyazka_bisection] = bisection(p1,p2);
  [error_secant, nevyazka_secant] = secant(p1,p2);
  
  figure(1)
  count = 1;
  for i=-2:0.1:3
    y(count)=my_func(i);
    count = count + 1;
  endfor 
  plot(-2:0.1:3, y,";y = (x^2+x)*exp(-x^2)-0.2;", 1.7951, my_func(1.7951))
  title ('y = (x^2+x)*exp(-x^2)-0.2');
  grid on
  
  figure(2)
  plot(1:numel(error_bisection), log10(abs(error_bisection)),";error bisection;", 1:numel(error_secant), log10(abs(error_secant)), ";error secant;", 1:numel(nevyazka_bisection), log10(abs(nevyazka_bisection)), ";nevyazka bisection;--", 1:numel(nevyazka_secant), log10(abs(nevyazka_secant)), ";nevyazka secant;--");
  title ('График зависимости модуля абсолютной ошибки от номера шага.');
  grid on
  
endfunction



  ###################
  #*****in main*****#
  #    lab2(1,2)    #
  ################### 