# Решение систем линейных уравнений Методом Гаусса с выбором главного элемента по столбцу

# A - Матрица коэффициентов
# B - Матрица свободных членов
# X - Матрица неизвестных

# Допущения:
# 1) Матрица свободных членов - квадратная;
# 2) На диагонали не 0.

# Метод Гаусса с выбором главного элемента по столбцу
# На i-том шаге (матрица ixi) выбираем из 1-го столбца максимальный по модулю элемент и переставляем (меняем местами) 1-ую строку и строку, в котором этот максимальный по модулю элемент

function [X, error] = Gauss_method_2(A,B)
  X = zeros(1, numel(A(1,:)));
  saveA=A;
  saveB=B;
  
  # Прямой ход
  for i = 1:(numel(A(1,:))-1)
    
    # Поиск максимального по модулю элемента в столбце и переставление строки с этим элементом при необходимости
    find_max_column = A(i:numel(A(1,:)), i:numel(A(1,:)))(:,1);
    [elemen, idx] = max(abs(find_max_column));
    if (A(i,i)!=elemen)
      
      need_to_up = A(i:numel(A(1,:)), i:numel(A(1,:)))(idx,:);
      index_need_to_up = 1;
      
      shift = numel(A(1,:))-numel(need_to_up);
      
      swapB=B(idx+shift);
      B(idx+shift)=B(i);
      B(i)=swapB;
      
      for g = i:(numel(A(1,:)))
        A(idx+shift,g) = A(i,g);
        A(i,g) = need_to_up(index_need_to_up);
        index_need_to_up++;
      endfor
      
    endif
    
    temp = A(i:numel(A(1,:)), i:numel(A(1,:)))(1,:); # Первая строка матрицы размерности i:numel(A(1,:))
    count_for_B=i+1;
    for j = 2:numel(A(i:numel(A(1,:)), i:numel(A(1,:)))(1,:))
      
      temp1 = temp*(A(i:numel(A(1,:)), i:numel(A(1,:)))(j,:)(1)/temp(1));
      new_row_matrix = A(i:numel(A(1,:)), i:numel(A(1,:)))(j,:) - temp1;
      
      B(count_for_B)=B(count_for_B)-B(i)*(A(i:numel(A(1,:)), i:numel(A(1,:)))(j,:)(1)/temp(1));
      count_for_B++;
      index_A_row = j+(i-1);
      
      index = 1;

      for k = i:(numel(A(1,:)))
        A(index_A_row,k) = new_row_matrix(index);
        index++;
      endfor
        
    endfor 
  endfor
  
  # Обратный ход
  i = numel(A(1,:));
  while (i>=1)
    sum = B(i);    
    for j = 1:numel(A(1,:))
      if (j!=i)
        sum=sum-X(j)*A(i,j);
      endif
    endfor
    X(i)=sum/A(i,i);  
    i--;
  endwhile
 
 error=Error(saveA,X,saveB);
 
endfunction



  #####################################
  #*************in main***************#
  #                                   #
  #  A = [7,8,3; 21,18,19; 10,4,1]    #
  #  B = [40; 118; 39]                # 
  #  [X, error] = Gauss_method_2(A,B) #
  #                                   #
  #####################################
  
  #####################################################################################
  #**************************************in main**************************************#
  #                                                                                   #
  #  A = [7,8,1,12,1; 123,9,12,9,12; 1,23,-12,12,91; 12,923,1,-1,72; 1,-3,-3,12,21]   #
  #  B = [4; 11; -2; 9; 1]                                                            # 
  #  [X, error] = Gauss_method_2(A,B)                                                 #
  #                                                                                   #
  ######################################################################################
  
  # A*X=B
  # 
  # (7  8  3 ) (X1) (40)
  # (21 18 19)*(X2)=(118)
  # (10 4  1 ) (X3) (39)
  
  # Result: X = (3, 2, 1)
  #
  # X1=3
  # X2=2
  # X3=1