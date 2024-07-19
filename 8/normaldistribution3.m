% 例題

% Pr{X≦3}、他の計算
% pdf をf(x), cdf をF(x) で表現すると

% （a）Pr{X≦3} = F(3)
% （b）Pr{2≦X≦6} = F(6) – F(2)
% （c）Pr{|X|≦6} = F(6) – F(-6)
% （d）Pr{|X-μ|≦2} = Pr{-2+μ ≦X≦2 +μ} =F(2+μ )-F(-2 +μ)

% ある製品の特性Tが平均3.0, 標準偏差2.0の正規分布に従うとする。このとき、この製品の特性Tの値が1.0から4.2の間に収まる確率を求める。



clc; clear; close all; % 画面とメモリの初期化

% -- CHANGE --

% パラメータの設定
sigma = 2; % 標準偏差
mu = 3; % 平均

% 範囲の定義
x1 = 3; 

x2 = 100; 
x3 = 200;

d = 6; 
delta = 2;


% -- CHANGE --

% 計算と結果の表示
% （a）Pr{X≦3} = F(3)
fprintf('Pr{X≦%d}\n', x1);
disp(normcdf(x1, mu, sigma));

% （b）Pr{2≦X≦6} = F(6) – F(2)
fprintf('Pr{%d≦X≦%d}\n', x2, x3);
disp(normcdf(x3, mu, sigma) - normcdf(x2, mu, sigma));

% （c）Pr{|X|≦6} = F(6) – F(-6)
 fprintf('Pr{|X|≦%d}\n', d);
disp(normcdf(d, mu, sigma) - normcdf(-d, mu, sigma));

% （d）Pr{|X-μ|≦2} = Pr{-2+μ ≦X≦2 +μ} =F(2+μ )-F(-2 +μ)
fprintf('Pr{|X-μ|≦%d}\n', delta);
disp(normcdf(mu + delta, mu, sigma) - normcdf(mu - delta, mu, sigma));

