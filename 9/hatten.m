clc;clear;close all; %画面とメモリの初期化
sx = 2; mx = 1; % sigma: Xの標準偏差, mu:平均
sy = 1; my = 4; % sigma: Yの標準偏差, mu:平均

%
%  Z = 2X+3Y
%

mz = 2*mx+3*my;
sz = sqrt((2*sx)^2+(3*sy)^2);

z = mz-4*sz:0.1:mz+4*sz; %　確率変数xの定義[μ-4σ,μ+4σ]

pdx = normpdf(z,mx,sx); %確率密度 
pdy = normpdf(z,my,sy); %確率密度 
pdz = normpdf(z,mz,sz); %確率密度 

plot(z,pdx, z,pdy, z,pdz);xlabel('X');ylabel('pd');grid on; %グラフ描画
legend('X', 'Y', 'Z');
title('pdf(Z = 2X+3Y)');
