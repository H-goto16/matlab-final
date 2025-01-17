% 5.0から10.0の一様乱数を1000回発生させ、横軸に試行回数 縦軸に
% 発生した乱数をプロットしなさい。ヒストグラムを書いて分布を確認しなさい

clc, clear,close all;
X = 5.0+5.0*rand([1,1000]); %5.0～10.0 の一様乱数の発生
figure(1); %グラフのウインドウ作成
plot(X,'.'); %グラフのプロット
axis([0 1000 0 12]) %グラフのx軸とy軸の範囲指定
xlabel('試行回数');
ylabel('乱数値');
grid on;   % グリッドの表示
title('一様乱数');
figure(2);
histogram(X,20) %ヒストグラムの表示
