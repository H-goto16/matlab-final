clc, clear, close all;
mu = 3;
sigma = 2;
for i=1:1:1000
    nd(i)=sigma*randn+mu;
end
figure;
plot(1:1:1000,nd, '.');
figure;
histogram(nd,100);

fprintf('����: %0.2f\n', mean(nd));
fprintf('���U: %0.2f\n', var(nd));
