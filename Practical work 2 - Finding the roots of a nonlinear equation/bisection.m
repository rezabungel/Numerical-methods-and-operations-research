#p1 - beginning of the interval
#p2 - end of the interval
function [error, nevyazka] = bisection(p1, p2)
  a=p1;
  b=p2;
  c=(a+b)/2;
 
  esp=0.0000000001;
  count = 0;
  while (1) 

    if (my_func(a)*my_func(c) < 0) 
      b=c;
    elseif (my_func(b)*my_func(c) < 0)
      a=c;
    else
      break
    endif
    c=(a+b)/2; 
    count = count +1;

    error(count) = abs(a-b)/2^count;
    nevyazka(count) = abs(0-my_func(c));
    if (esp>error(count))
      break
    endif   
  endwhile
  
disp('Root (bisection) =');
disp(c);
endfunction



  #######################
  #*******in main*******#
  #  bisection(1.5,3)   #
  ####################### 