clc
clear
syms T t a0 a1 a2 a3 a4 a5 a6 a7

%Полином 7ой степени
s=a0+a1*t+a2*t^2+a3*t^3+a4*t^4+a5*t^5+a6*t^6+a7*t^7

%Дифференциал 1,2,3 порядка
s1=diff(s,t)
s2=diff(s1,t)
s3=diff(s2,t)

%Решение системы уравнений
%S(T)=1
%S(0)=S'(0)=S''(0)=S'''(0)=S'(T)=S''(T)=S'''(T)=0
%Найдем значения коэффициентов a0 a1 a2 a3 a4 a5 a6 a7
eqns=[subs(s,t,T)==1,subs(s1,t,0)==0,subs(s2,t,0)==0,subs(s3,t,0)==0,
     subs(s,t,0)==0,subs(s1,t,T)==0,subs(s2,t,T)==0,subs(s3,t,T)==0]
S = solve(eqns,[a0 a1 a2 a3 a4 a5 a6 a7])


%Для построения графика выберем T=1

%График S(t)
y=subs(s,{a0,a1,a2,a3,a4,a5,a6,a7},{S.a0,S.a1,S.a2,S.a3,S.a4,S.a5,S.a6,S.a7})
t=0:1/100:1
y=subs(y,T,1)
y=double(subs(y))

figure
plot(t,y)
title('S(t)')
xlabel('t')
ylabel('S(t)')

%График dS(t)
y=subs(s1,{a0,a1,a2,a3,a4,a5,a6,a7},{S.a0,S.a1,S.a2,S.a3,S.a4,S.a5,S.a6,S.a7})
t=0:1/100:1
y=subs(y,T,1)
y=double(subs(y))

figure
plot(t,y)
title('dS(t)')
xlabel('t')
ylabel('dS(t)')


%График ddS(t)
y=subs(s2,{a0,a1,a2,a3,a4,a5,a6,a7},{S.a0,S.a1,S.a2,S.a3,S.a4,S.a5,S.a6,S.a7})
t=0:1/100:1
y=subs(y,T,1)
y=double(subs(y))


figure
plot(t,y)
title('ddS(t)')
xlabel('t')
ylabel('ddS(t)')


%График dddS(t)
y=subs(s3,{a0,a1,a2,a3,a4,a5,a6,a7},{S.a0,S.a1,S.a2,S.a3,S.a4,S.a5,S.a6,S.a7})
t=0:1/100:1
y=subs(y,T,1)
y=double(subs(y))


figure
plot(t,y)
title('dddS(t)')
xlabel('t')
ylabel('dddS(t)')

