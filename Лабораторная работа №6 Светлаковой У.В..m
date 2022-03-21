%Лабораторная работа №6 Светлаковой Ульяны
%Вариант №54
%1 задание
a=5;
b=7;
y=(a^1/2+b^1/2)*(a^1/3+b^1/3);
disp('y= ');
disp(y);
%2 задание
x = [1, 2, 3, 4, 5];
f=x.*exp(x);
disp('Значения функции y=: xe^x');
disp(f);
%3 задание
N=5;
M = zeros(5,5);
for k=1:N
    for j=1:N
      if(k==j)
        M(k,j)=2*k-j;
      else
        M(k,j)=k+0.1;
      end
    end
end
disp('М= ');
disp(M);
V=zeros(5,1);
for n=1:N
    V(n,1)=1+n^3;
end
disp('V= ');
disp(V);
%4 задание
d=det(M);
disp('Определитель М: ');
disp(d);
e=det(M^2);
disp('Определитель М²: ');
disp(e);
g=det(M^-1);
disp('Определитель М⁻¹: ');
disp(g);
%5 задание
x=M\V;
disp('Решение СЛУ вида Mx=V: ');
disp(x);
%6 задание
h=(M*M^-1)-eye(N);
disp('Погрешность вычисления обратной матрицы: ');
disp(h);
%7 задание
l=(M*x)-V;
disp('Погрешность решения системы уравнений: ');
disp(l);
%8 задание
n=4;
P=zeros(n);
Q=zeros(n);
for k=1:N
    for j=1:N
      if(k==j)
        Q(k,j)=2*k-j;
        P(k,j)=3*k-j;
      else
        Q(k,j)=k+j^2;
        P(k,j)=k+j*3;
      end
    end
end
disp('Q= ');
disp(Q);
disp('P= ');
disp(P);
S=P+Q;
R=P-Q;
disp('Поэлементное сложение: ');
disp(S);
disp('Поэлементное вычитание: ');
disp(R);
I=zeros(n);
D=zeros(n);
for k=1:N
    for j=1:N
        D(k,j)=Q(k,j)/P(k,j);
        I(k,j)=Q(k,j)*P(k,j);
    end
end
disp('Поэлементное деление: ');
disp(D);
disp('Поэлементное умножение: ');
disp(I);
B=P*Q;
C=Q*P;
disp('P*Q= ');
disp(B);
disp('Q*P= ');
disp(C);
if (C == B)
    disp('Коммутативно')
else 
    disp('Некоммутативно')
end
disp('Q в виде вектора-строки: ');
T=reshape(Q',1,[]);
disp(T);
L=P^94;
disp('P⁹⁴= ');
disp(L);