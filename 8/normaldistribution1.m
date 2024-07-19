clc;clear;close all; %画面とメモリの初期化
sigma = 5; mu = 10; % sigma: 標準偏差, mu:平均
x = mu-4*sigma:0.1:mu+4*sigma; %　確率変数xの定義[μ-4σ,μ+4σ]
y = (1/(sqrt(2*pi)*sigma))*exp(-((x - mu).^2)/(2*sigma^2)); %確率密度 
 
plot(x,y);
xlabel('X');
ylabel('pd');grid on; %グラフ描画
title('pdf');