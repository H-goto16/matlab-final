clc;clear;close all; %画面とメモリの初期化
sigma = 5; mu = 10; % sigma: 標準偏差, mu:平均
disp('Pr{X≦3}');
disp(normcdf(3,mu,sigma));
disp('Pr{2≦X≦6}');
disp(normcdf(6,mu,sigma)-normcdf(2,mu,sigma));
disp('Pr{|X|≦6}');
disp(normcdf(6,mu,sigma)-normcdf(-6,mu,sigma));
disp('Pr{|X-μ|≦2} ');
disp(normcdf(2+mu,mu,sigma)-normcdf(-2+mu,mu,sigma));
