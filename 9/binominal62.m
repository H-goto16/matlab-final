% 確率密度関数グラフプロット

clc, clear, close all; %初期設定(画面クリア等）
warning('off');
%
%  二項分布の作図
%  
%
%
%  二項分布の作図
%
%
n = 1000;        %試行回数
p = 1.0/3.0;    %
q = 1 - p;      %

for k = 1:n
     P_bin(k) = nchoosek(n,k) * p^k * (1-p)^(n - k);
end

%
%   x=[mu - 3*sigma, mu + 3*sigm] の範囲で表示するように変更
%
%

mu = n*p;
sigma = sqrt(n*p*q);
LE = round(mu - 3*sigma);
RE = round(mu + 3*sigma);

for k = LE:1:RE
    x(k-LE+1) = k;
    niko(k-LE+1) = P_bin(k);
end

%
%  正規分布の作図
%

normal = (1/(sqrt(2*pi)*sigma))*exp(-((x - mu).^2)/(2*sigma^2)); %確率密度

figure(1);

plot(x,niko,'o', x,normal);
xlabel('確率変数 X');
ylabel('確率密度 pd');
grid on; %グラフ描画
title('確率密度関数');
legend('二項分布', '正規分布');
