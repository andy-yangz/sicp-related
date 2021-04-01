题目描述：证明 Fib(n) 是最接近$\phi^n/\sqrt{5}$的整数,$\phi=(1+\sqrt{5})/2$

假设 $\psi=(1-\sqrt{5})/2$  
证明 $Fib(n)=(\phi^n-\psi^n)/\sqrt{5}$  
$$
Fib(n+1) = (\frac{1+\sqrt{5}}{2}\phi^n - \frac{1-\sqrt{5}}{2}\psi^n)/\sqrt{5} \\
=\frac{1}{2}(\frac{\phi^n-\psi^n}{\sqrt{5}}+\frac{\sqrt{5}(\phi^n+\psi^n)}{\sqrt{5}}) \\
= \frac{1}{2}(\frac{\phi^n-\psi^n}{\sqrt{5}})+\frac{1}{2}(\phi^n+\psi^n)\\
= \frac{1}{2}Fib(n)+\frac{1}{2}(\phi^n+\psi^n)
$$
同样的对 Fib(n+2) 进行推导
$$
Fib(n+2) = (\frac{1+\sqrt{5}}{2}\phi^{n+1} - \frac{1-\sqrt{5}}{2}\psi^{n+1})/\sqrt{5} \\
=\frac{1}{2}Fib(n+1)+\frac{1}{2}(\phi^{n+1}+\psi^{n+1}) \\
=\frac{1}{4}Fib(n) + \frac{1}{4}(\phi^n+\psi^n)+\frac{1}{2}(\frac{1+\sqrt{5}}{2}\phi^n - \frac{1-\sqrt{5}}{2}\psi^n) \\
=\frac{1}{4}Fib(n) + \frac{1}{4}(\phi^n+\psi^n) + \frac{1}{4}(\phi^n+\psi^n) + \frac{5}{4}Fib(n)\\
=\frac{3}{2}Fib(n) + \frac{1}{2}(\phi^n+\psi^n)
$$

因此可以看到
$$
Fib(n+2) = Fib(n+1) + Fib(n)
$$
得证
$$
Fib(n)=(\phi^n-\psi^n)/\sqrt{5}  
$$
因此可以得到
$$
|Fib(n)-\frac{\phi^n}{\sqrt{5}}|=|\frac{\psi^n}{\sqrt{5}}|
$$
对于右边的项，上面$|\psi|<1$,因此$|\psi^n|<1$  
对于下面的项，$\sqrt{5}>2$，所以$\frac{1}{\sqrt{5}}<\frac{1}{2}$  
于是一起就是$|\frac{\psi^n}{\sqrt{5}}|<\frac{1}{2}$  
就可以得
$$
|Fib(n)-\frac{\phi^n}{\sqrt{5}}| < \frac{1}{2}
$$
如果 $\frac{\phi^n}{\sqrt{5}}$ 是两个整数之间的某个点，那么最近的整数只能在这两个中间取。  
按照上面的结论，另一个离 $\frac{\phi^n}{\sqrt{5}}$ 最近的整数只能 $|x-\frac{\phi^n}{\sqrt{5}}|>1/2$  
所以可以得出 Fib(n) 是最接近$\phi^n/\sqrt{5}$的整数
