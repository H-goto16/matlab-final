clc, clear, close all;
X = [24.3 18.9 23.7 23.0 17.4]; %標本
Xm = (1/5)*X*ones([5 1]); %標本平均
Mu = 17.5;
U2 = (1/4)*(X-Xm).^2*ones([5 1]); %不偏分散
F0 = (Xm-Mu)^2/(U2/5);
Ans = 1-fcdf(F0,1,4); 
disp('Ans');
disp(Ans);
