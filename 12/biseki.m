clc;clear;close all;
dx=0.01;
x = -2:dx:4; % -2≦x＜4
y=(1/sqrt(2*pi))*exp(-(x-1).^2/2); % y=f(X)
yd = (y(2:end) - y(1:end-1))/dx; %微分計算　 
yi(1) = y(1)*dx;
for k = 2:length(y)
    yi(k) = yi(k-1)+y(k)*dx; %積分計算
end
subplot(3,1,1); plot(x,y);
grid on; xlabel('x'); ylabel('f(x)');
subplot(3,1,2);plot(x(1:end-1)+0.01/2,yd); title('微分');
grid on; xlabel('x'); ylabel('df/dx');
subplot(3,1,3);plot(x,yi); title('積分');
grid on; xlabel('x'); ylabel('F(x)');