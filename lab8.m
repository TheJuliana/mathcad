%Лабораторная работа №8 Светлаковой Ульяны
%Вариант №54
%Задание 1
clear; clc;
x=-5*pi:0.1*pi:20*pi;
f=sin(x)-5+x;
plot(x,f);
title('Задание №1');
legend('f=sin(x)-5+x');
xlabel('x');
ylabel('y');
grid on;
ginput
%Задание 2
%Построение графиков
clear; clc;
x=-2:0.1:2;
fplot(@(x)8*x-2), hold on
fplot(@(x)sqrt(2*x));
fplot(@(x)-sqrt(2*x));
hold on
title('Задание №2');
xlabel('x');
ylabel('y');
grid on;
ginput;
%Точки пересечения
syms x;
f1=simplify((8*x-2)-sqrt(2*x));
f2=simplify((8*x-2)-(-sqrt(2*x)));
display(f1);
display(f2);
x0=0;
x1=fzero(@(x)8*x - 2^(1/2)*x^(1/2) - 2, 0.35);
disp('Точки пересечения:');
disp('x1=');
disp(x1);
x2=fzero(@(x)8*x + 2^(1/2)*x^(1/2) - 2, 0.17);
disp('x2=');
disp(x2);
%Находим площадь
s1=integral(@(x)8*x - 2^(1/2)*x.^(1/2) + 30, x0, x1);
s2=-integral(@(x)8*x + 2^(1/2)*x.^(1/2) + 30, x0, x2);
s=s1+s2;
disp('Площадь равна: ');
disp(s);
%Фокальная точка - точка F(p/2, 0)
plot(1,0,'or');
legend('f1=3*x-2','f2=(x)sqrt(2*x)', 'f3=-sqrt(2*x)', 'F');
%Задание №3
%задаем параметры параболического цилиндра
a=5.2;
b=4.3;
c=3;
x0=0.7;
y0=1.2;
% создаем сетку по осям X и Z
x=-6:0.25:6;
z=-8:0.5:8;
[X,Z]=meshgrid(x,z);
% вычисляем значения Y
Yc=((X-x0).^2)/(2*a^2*b);
%исключаем комплексные элементы
%находим индексы  комплексных элементов
ind=abs(imag(Yc))>0;
%и заменяем их значением NaN
Yc(ind)=NaN;
% строим цилиндр в декартовых координатах
figure
surf(X,Yc,Z)
title('Задание №3');
xlabel('x');
ylabel('y');
zlabel('z');
hold on
%строим прямую
x1=0; y1=1; z1=-3;
ax=1; ay=-2; az=-3;
X=[x1 ax+x1];
Y=[y1 ay+y1];
Z=[z1 az+z1];
plot3(X,Y,Z,'r')
ginput;
hold on
%Найдем точку пересечения графическим методом: т.M(0.5;0.00017201;-4.5)
%Построим ее
plot3(0.5, 0.00017201, -4.5, 'or');