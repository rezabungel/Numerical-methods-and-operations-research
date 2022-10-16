#p1 - a point near the root
#p2 - b point near the root

#The number for this graph should not exceed -2 and 3.
function [error, nevyazka] = secant(p1,p2)
  x1=p1; #Xn
  x2=p2; #Xn-1
  
  count = 0;
  
  esp = 0.0000000001;
  
  while (1)
    if (count > 0)
      x2=x1;
      x1=x;
    endif
      x = x1-(((x1-x2)*my_func(x1))/(my_func(x1)-my_func(x2)));
    
    count = count + 1;
    error(count) = abs(x1-x2);
    nevyazka(count) = abs(0-my_func(x));
    if (esp > error(count))
      break
    endif
    
  endwhile
   
disp('Root (secant) = ');
disp(x);
endfunction



  #####################
  #******in main******#
  #   secant(1,3)     #
  ##################### 