clc, clear,close all;
X = 7.5+(2.5/3)*randn([1 1000]); %正規乱数の発生
figure(1);%グラフのウインドウ作成
plot(X,'.');%グラフのプロット
axis([0 1000 0 12])%グラフのx軸とy軸の範囲指定
xlabel('試行回数');
ylabel('乱数値');
grid on;  % グリッドの表示
title('正規乱数');
figure(2);
histogram(X,20)%ヒストグラムの表示