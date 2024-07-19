clc, clear, close all;
univ=xlsread('universe_model_4_1.xlsx'); 
N = length(univ); %データの大きさ（行数）をNとする
x=1:1:N;
figure;
plot(x,univ,'.');
figure;
histogram(univ,20);
fprintf('平均: %0.2f\n', mean(univ));
fprintf('分散: %0.2f\n', var(univ,1));
fprintf('標準偏差: %0.2f\n', std(univ,1));

x1=univ(randi([1,N]));
x2=univ(randi([1,N]));
x3=univ(randi([1,N]));
x4=univ(randi([1,N]));




