clc, clear, close all;
univ=xlsread('universe_model_4_1.xlsx'); 
N = length(univ); %データの大きさ（行数）をNとする

for i = 1:1:100
    x1(i)=univ(randi([1,N]));
    x2(i)=univ(randi([1,N]));
    x3(i)=univ(randi([1,N]));
    x4(i)=univ(randi([1,N]));
end

xm = (x1+x2+x3+x4)/4;
ss = ((x1-xm).^2 + (x2-xm).^2 +(x3-xm).^2 +(x4-xm).^2)/4;
uu = (4/3)*ss;

k = 1:1:N;
figure(1);
plot(k,x1,'.', k,x2,'.',k,x3,'.',k,x4,'.');
grid on;
title('標本x1,x2,...,x4の分布');
ylim([20,80]);
figure(2);
plot(k,xm,'.');
grid on;
title('標本平均の分布');
ylim([20,80]);

figure(3);
plot(k,ss,'o');
ylim([0,350]);

figure(4);
histogram(ss,20);
xlim([0,400]);

figure(5);
plot(k,uu,'x');
ylim([0,350]);

figure(6);
histogram(uu,20);
xlim([0,400]);

fprintf('標本分散の平均値: %0.2f\n', mean(ss));
fprintf('不偏分散の平均値: %0.2f\n\n', mean(uu));

x=cat(2,x1,x2,x3,x4);
fprintf('標本の平均値: %0.2f\n', mean(x));
fprintf('標本の分散: %0.2f\n', var(x));

fprintf('標本平均の平均値: %0.2f\n', mean(xm));
fprintf('標本平均の分散: %0.2f\n', var(xm));
