clc;clear;close all;
x=[2.43 1.89 2.37 2.30 1.74]; %標本
a=0.05;      %α
n=length(x); %標本個数
xm=mean(x); %標本平均

Fa=finv(1-a,1,n-1); %F分布cdfの逆関数
u2=var(x);  %xの不偏分散
u=sqrt(u2); %xの不偏標準偏差
le=xm-u*sqrt(Fa/n); %信頼区間（左）
re=xm+u*sqrt(Fa/n); %信頼区間（右）
disp(le);disp(re); %結果の表示