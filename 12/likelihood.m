clc;clear;close all;
n = 20; k = 9; %n,k
pp = 0.1;      %pの真値
dp = 0.01;
p = 0:dp:1; %pを0～1まで、0.01刻みで設置
Lp =  p.^k.*(1 - p).^(n - k); %尤度関数Lp
Lpd = (Lp(2:end) - Lp(1:end-1))/dp; %L‘(p)の計算 
[Lp_max, im]= max(Lp); %尤度最大値の座標を探す
disp('p^='); disp(p(im)); %最尤推定値の表示
%プロット
subplot(2,1,1)
plot(p,Lp,[p(im) p(im)],[Lp_max*0.8 Lp_max*1.2]); 
xlabel('p'); ylabel('L(p)');
subplot(2,1,2)
plot(p(2:end),Lpd,[p(im) p(im)],[min(Lpd)*0.4 max(Lpd)]*0.4);
xlabel('p'); ylabel('L^’(p)');