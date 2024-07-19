% サイコロを1000回投げてでための回数のヒストグラムを作りなさい

clc, clear, close all;
for i=1:1:10000
    dice(i)=randi([1,6]);
end
figure;
plot(1:1:10000,dice, '.');
figure;
histogram(dice,6);