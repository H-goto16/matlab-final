clc;clear;close all; 
s = 5; m = 10; % s: 標準偏差, m:平均
x = m-4*s:0.1:m+4*s; %xの範囲[μ-4σ,μ+4σ]
pdf = normpdf(x,m,s); %確率密度 
cdf = normcdf(x,m,s); %分布関数 

subplot(1,2,1);
plot(x,pdf);xlabel('X');
ylabel('pd');grid on; 
title('pdf');

subplot(1,2,2);
plot(x,cdf);xlabel('X');
ylabel('cd');grid on; 
title('cdf');
