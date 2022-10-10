#Подпрограмма осуществляющая интерполирование по алгоритму Невелла.
#Здесь x – вектор точек, у – вектор значений функции в этих точках, x0 – точка где вычисляется значение интерполянта.
function polinom_Y = interpolate(x,y,x0)
     
  polynomial = zeros(numel(x),numel(x),numel(x0));

  for i = 1:numel(x)
    for j = 1:numel(x)
      if i == j 
        for k = 1:numel(x0)
          polynomial(i,j,k) = y(i);  
        endfor
        break;
      endif
    endfor
  endfor

 #disp(polynomial)
 for i = 1:(numel(x)-1)
   for j = 1:(numel(x)-i)
     for k = 1:numel(x0)
       polynomial(j,j+i,k)=((((x0(k)-x(j))*polynomial(j+1,j+i,k))-((x0(k)-x(j+i))*polynomial(j,j+(i-1),k)))/(x(j+i)-x(j)));
     endfor
   endfor
 endfor
 
 #disp(polynomial)
 
 for i = 1:numel(x0)
  polinom_Y(i)=polynomial(1,numel(x),i);
 endfor

 endfunction