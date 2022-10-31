# x - точка, в которой вычислены y(x) и y'(x)
# y = [y(x), y'(x)]

function result = f(x,y)
  result=zeros(1,2);
  y1=y(1);
  y2=y(2);
  result(1)=y2;
  result(2)=sin(x)-y1;
  endfunction