# Numerical-methods-and-operations-research

## Content   

Practical work:
1. [Calculation errors](#Practical_work1)
    1. [(Red - revers) Residual term (error) - Rn(x)=f(x)-Tn(x)](#Graph_1-1)
    2. [(Red - revers) Graph of the dependence of the decimal logarithm of the absolute error - lg(abs(f(x0)-S(n)))](#Graph_1-2)
2. [Finding the roots of a nonlinear equation](#Practical_work2)
    1. [The graph of the function and the root we are looking for](#Graph_2-1)
    2. [Graph of the dependence of the absolute error module on the step number](#Graph_2-2)
3. [Polynomial interpolation](#Practical_work3)
    1. [Interpolation graph using linear grid for steps - n, n+10, n+15](#Graph_3-1)
    2. [Error interpolate Linear grid for n, n+10, n+15](#Graph_3-2)
    3. [Interpolation graph using Chebyshev grid for steps - n, n+10, n+15](#Graph_3-3)
    4. [Error interpolate Сhebyshev grid for n, n+10, n+15](#Graph_3-4)
    5. [MAX Error interpolate linear grid and MAX Error interpolate Chebyshev grid, n = [2, 30]](#Graph_3-5)
4. [Iterative methods for solving systems of linear algebraic equations](#Practical_work4)
    1. [Graph of the dependence of the absolute error module on the step number](#Graph_4-1)
    2. [Graph of changes in the roots of a system of linear algebraic equations obtained during the calculation](#Graph_4-2)
    3. [Information output to the console](#Graph_4-3)
5. [Calculation of integrals](#Practical_work5)
    1. [The graph of the function whose integral we are looking for, built on the integration interval [-2, 1]](#Graph_5-1)
    2. [A graph of the dependence of the absolute error modulus between the exact values of I and the corresponding value of I(0) extrapolated by Romberg](#Graph_5-2)
    3. [Values of calculated integrals at different steps](#Graph_5-3)
6. [Solving ordinary differential equations](#Practical_work6)
    1. [Graph of the analytical solution of the second-order differential equation and the solution obtained by the Euler-Cauchy method for different steps. The graphs are built on the interval [x, xEND]](#Graph_6-1)
    2. [A graph of the dependence of the absolute error modulus between the value obtained using the Euler-Cauchy method and the analytical value](#Graph_6-2)

## <a name="Practical_work1">Practical work 1 - Calculation errors</a> 

### <a name="Graph_1-1">1. (Red - revers) Residual term (error) - Rn(x)=f(x)-Tn(x)</a>
![1. (Red - revers) Residual term (error) - Rn(x)=f(x)-Tn(x)](./Practical%20work%201%20-%20Calculation%20errors/Result%20graph/1.%20(Red%20-%20revers)%20Residual%20term%20(error)%20-%20Rn(x)%3Df(x)-Tn(x).png)

### <a name="Graph_1-2">2. (Red - revers) Graph of the dependence of the decimal logarithm of the absolute error - lg(abs(f(x0)-S(n)))</a>
![2. (Red - revers) Graph of the dependence of the decimal logarithm of the absolute error - lg(abs(f(x0)-S(n)))](./Practical%20work%201%20-%20Calculation%20errors/Result%20graph/2.%20(Red%20-%20revers)%20Graph%20of%20the%20dependence%20of%20the%20decimal%20logarithm%20of%20the%20absolute%20error%20-%20lg(abs(f(x0)-S(n))).png)

## <a name="Practical_work2">Practical work 2 - Finding the roots of a nonlinear equation</a>   

### <a name="Graph_2-1">1. The graph of the function and the root we are looking for</a>
![1. The graph of the function and the root we are looking for](/Practical%20work%202%20-%20Finding%20the%20roots%20of%20a%20nonlinear%20equation/Result%20graph/1.%20The%20graph%20of%20the%20function%20and%20the%20root%20we%20are%20looking%20for.png)

### <a name="Graph_2-2">2. Graph of the dependence of the absolute error module on the step number</a>
![2. Graph of the dependence of the absolute error module on the step number](/Practical%20work%202%20-%20Finding%20the%20roots%20of%20a%20nonlinear%20equation/Result%20graph/2.%20Graph%20of%20the%20dependence%20of%20the%20absolute%20error%20module%20on%20the%20step%20number.png)

## <a name="Practical_work3">Practical work 3 - Polynomial interpolation</a>   

### <a name="Graph_3-1">1. Interpolation graph using linear grid for steps - n, n+10, n+15</a>
![1. Interpolation graph using linear grid for steps - n, n+10, n+15](./Practical%20work%203%20-%20Polynomial%20interpolation/Result%20graph/1.%20Interpolation%20graph%20using%20linear%20grid%20for%20steps%20-%20n%2C%20n%2B10%2C%20n%2B15.png)

### <a name="Graph_3-2">2. Error interpolate Linear grid for n, n+10, n+15</a>
![2. Error interpolate Linear grid for n, n+10, n+15](/Practical%20work%203%20-%20Polynomial%20interpolation/Result%20graph/2.%20Error%20interpolate%20Linear%20grid%20for%20n%2C%20n%2B10%2C%20n%2B15.png)

### <a name="Graph_3-3">3. Interpolation graph using Chebyshev grid for steps - n, n+10, n+15</a>
![3. Interpolation graph using Chebyshev grid for steps - n, n+10, n+15](./Practical%20work%203%20-%20Polynomial%20interpolation/Result%20graph/3.%20Interpolation%20graph%20using%20Chebyshev%20grid%20for%20steps%20-%20n%2C%20n%2B10%2C%20n%2B15.png)

### <a name="Graph_3-4">4. Error interpolate Сhebyshev grid for n, n+10, n+15</a>
![4. Error interpolate Сhebyshev grid for n, n+10, n+15](./Practical%20work%203%20-%20Polynomial%20interpolation/Result%20graph/4.%20Error%20interpolate%20%D0%A1hebyshev%20grid%20for%20n%2C%20n%2B10%2C%20n%2B15.png)

### <a name="Graph_3-5">5. MAX Error interpolate linear grid and MAX Error interpolate Chebyshev grid, n = [2, 30]</a>
![5. MAX Error interpolate linear grid and MAX Error interpolate Chebyshev grid, n = [2, 30]](./Practical%20work%203%20-%20Polynomial%20interpolation/Result%20graph/5.%20MAX%20Error%20interpolate%20linear%20grid%20and%20MAX%20Error%20interpolate%20Chebyshev%20grid%2C%20n%20%3D%20%5B2%2C%2030%5D.png)

## <a name="Practical_work4">Practical work 4 - Iterative methods for solving systems of linear algebraic equations</a>   

### <a name="Graph_4-1">1. Graph of the dependence of the absolute error module on the step number</a>
![1. Graph of the dependence of the absolute error module on the step number](./Practical%20work%204%20-%20Iterative%20methods%20for%20solving%20systems%20of%20linear%20algebraic%20equations/Result%20graph/1.%20Graph%20of%20the%20dependence%20of%20the%20absolute%20error%20module%20on%20the%20step%20number.png)

### <a name="Graph_4-2">2. Graph of changes in the roots of a system of linear algebraic equations obtained during the calculation</a>
![2. Graph of changes in the roots of a system of linear algebraic equations obtained during the calculation](./Practical%20work%204%20-%20Iterative%20methods%20for%20solving%20systems%20of%20linear%20algebraic%20equations/Result%20graph/2.%20Graph%20of%20changes%20in%20the%20roots%20of%20a%20system%20of%20linear%20algebraic%20equations%20obtained%20during%20the%20calculation.png)

### <a name="Graph_4-3">3. Information output to the console</a>
![3. Information output to the console](./Practical%20work%204%20-%20Iterative%20methods%20for%20solving%20systems%20of%20linear%20algebraic%20equations/Result%20graph/3.%20Information%20output%20to%20the%20console.png)

## <a name="Practical_work5">Practical work 5 - Calculation of integrals</a>   

### <a name="Graph_5-1">1. The graph of the function whose integral we are looking for, built on the integration interval [-2, 1]</a>
![1. The graph of the function whose integral we are looking for, built on the integration interval [-2, 1]](./Practical%20work%205%20-%20Calculation%20of%20integrals/Result%20graph/1.%20The%20graph%20of%20the%20function%20whose%20integral%20we%20are%20looking%20for%2C%20built%20on%20the%20integration%20interval%20%5B-2%2C%201%5D.png)

### <a name="Graph_5-2">2. A graph of the dependence of the absolute error modulus between the exact values of I and the corresponding value of I(0) extrapolated by Romberg</a>
![2. A graph of the dependence of the absolute error modulus between the exact values of I and the corresponding value of I(0) extrapolated by Romberg](./Practical%20work%205%20-%20Calculation%20of%20integrals/Result%20graph/2.%20A%20graph%20of%20the%20dependence%20of%20the%20absolute%20error%20modulus%20between%20the%20exact%20values%20of%20I%20and%20the%20corresponding%20value%20of%20I(0)%20extrapolated%20by%20Romberg.png)

### <a name="Graph_5-3">3. Values of calculated integrals at different steps</a>
![3. Values of calculated integrals at different steps](./Practical%20work%205%20-%20Calculation%20of%20integrals/Result%20graph/3.%20Values%20of%20calculated%20integrals%20at%20different%20steps.png)

## <a name="Practical_work6">Practical work 6 - Solving ordinary differential equations</a>   

### <a name="Graph_6-1">1. Graph of the analytical solution of the second-order differential equation and the solution obtained by the Euler-Cauchy method for different steps. The graphs are built on the interval [x, xEND]</a>
![1. Graph of the analytical solution of the second-order differential equation and the solution obtained by the Euler-Cauchy method for different steps. The graphs are built on the interval [x, xEND]](./Practical%20work%206%20-%20Solving%20ordinary%20differential%20equations/Result%20graph/1.%20Graph%20of%20the%20analytical%20solution%20of%20the%20second-order%20differential%20equation%20and%20the%20solution%20obtained%20by%20the%20Euler-Cauchy%20method%20for%20different%20steps.%20The%20graphs%20are%20built%20on%20the%20interval%20%5Bx%2C%20xEND%5D.png)

### <a name="Graph_6-2">2. A graph of the dependence of the absolute error modulus between the value obtained using the Euler-Cauchy method and the analytical value</a>
![2. A graph of the dependence of the absolute error modulus between the value obtained using the Euler-Cauchy method and the analytical value](./Practical%20work%206%20-%20Solving%20ordinary%20differential%20equations/Result%20graph/2.%20A%20graph%20of%20the%20dependence%20of%20the%20absolute%20error%20modulus%20between%20the%20value%20obtained%20using%20the%20Euler-Cauchy%20method%20and%20the%20analytical%20value.png)