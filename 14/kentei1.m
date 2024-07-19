clc;clear;close all;
x = [4.5, 4.3, 4.4, 4.3, 4.5]; %標本
n = length(x); %標本の大きさ
xm = mean(x); %標本平均

um = 4.3; %母平均
usd = 0.1;  %母標準偏差
sl = 0.05; %有意水準

T = (xm - um)/(usd/sqrt(n)); %実現値
Ta = norminv(1-sl/2, 0, 1); %棄却域境界（右）

if abs(T) > Ta %棄却判断
    jdge = '棄却';
else 
    jdge = '棄却しない';
end
str_disp = sprintf('Ta =%f ', Ta); %表示
disp(str_disp);
str_disp = sprintf('|T| =%f %s', T, jdge); %表示
disp(str_disp);
