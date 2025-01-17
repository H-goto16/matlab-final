clc;clear;close all;
x = [4.6, 2.6, 4.4, 2.1, 3.5, 3.2, 2.9,...
    3.2, 4.1, 3.1, 3.8, 3.5, 2.7, 4.3,...
    3.0, 3.3, 3.4, 3.7, 3.8, 3.8, 3.9,...
    4.2, 5.1, 3.1, 3.8, 2.9, 2.7, 4.3,...
    4.6, 3.3, 4.4, 3.7, 2.8, 4.8, 3.9,...
    2.5, 4.1, 4.1, 3.4, 3.4, 3.7, 2.3,...
    4.0, 3.3, 3.4, 3.7, 3.9, 3.6, 3.9,...
    2.6, 3.1, 3.1, 2.8, 3.5, 4.7, 4.3,...
    3.3, 4.3, 3.4, 3.7, 3.8, 3.8, 3.9,...
    ]; 
figure(1);
normplot(x);
figure(2);
histogram(x,10);
a = 0.05;
[h,p] = chi2gof(x,'Alpha', a);
if h == 1 %棄却判断
    jdge = '棄却';
else 
    jdge = '棄却しない';
end
str_disp = sprintf('α =%f', a); %表示
disp(str_disp);
str_disp = sprintf('p =%f %s', p, jdge); %表示
disp(str_disp);