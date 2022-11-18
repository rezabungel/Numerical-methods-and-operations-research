# Differential equation.
# y''+y'=sinx

# The solution obtained analytically.
# y=-1*(1\2)*cos(x)-(1\2)*sin(x)+(1\2)*exp(-x)+1 

function y = function_obtained_analytically(x)
  y = -(1/2)*cos(x)-(1/2)*sin(x)+(1/2)*exp(-x)+1;
  endfunction