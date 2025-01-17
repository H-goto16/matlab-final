% 確率密度関数3d グラフプロット

clc;clear;close all;
m = [0 0]; %平均値
s = [0.25 0.3; 0.3 1];%分散共分散行列

x = -3:0.2:3;
y = -3:0.2:3;
[X1,Y1] = meshgrid(x,y); %メッシュグリッド
X = [X1(:) Y1(:)];

z = mvnpdf(X,m,s);%多変量正規分布の確率密度関数
z = reshape(z,length(y),length(x));%配列の形状変更

surf(x,y,z)
axis([-3 3 -3 3 0 0.4])
xlabel('x')
ylabel('y')
zlabel('確率密度')