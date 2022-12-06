# error = abs(A*X-B)

function error = Error(A,X,B)
  
  error=zeros(1,numel(B));
  
  for i = 1:numel(A(1,:))
    sum=0;
    for j = 1:numel(A(1,:))
      sum=sum+A(i,j)*X(j);
    endfor
    error(i)=abs(sum-B(i));
  endfor
  
  endfunction