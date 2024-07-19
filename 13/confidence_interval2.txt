clc;clear;close all;
x=[28.0 27.7 27.0 27.7 25.7 27.7 28.3 27.8 26.5 26.4 27.1]; %標本
a=0.02;      %α
n=length(x); %標本個数
m=27.26;     %母平均
d2=(x-m);    %標本偏差
S=d2*d2';    %標本偏差の2乗和

Kai1=chi2inv(1-a/2,n); %a/2点
Kai2=chi2inv(a/2,n); %(1-a/2)点

le=S/Kai2; %信頼区間（左）
re=S/Kai1; %信頼区間（右）
disp(le);disp(re); %結果の表示