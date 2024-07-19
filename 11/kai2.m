clc, clear, close all;
univ=xlsread('universe_model_4_1.xlsx'); 
N = length(univ); %データの大きさ（行数）をNとする
 
for i = 1:1:1000
    x1(i)=univ(randi([1,N]));
    x2(i)=univ(randi([1,N]));
    x3(i)=univ(randi([1,N]));
    x4(i)=univ(randi([1,N]));
end
 
mu=50; va=100;
xm = (x1+x2+x3+x4)/4;
 
X12 = ((x1-xm).^2 + (x2-xm).^2 +(x3-xm).^2 +(x4-xm).^2)/va;
X22 = (xm-mu).^2/(va/4);
X32 = ((x1-mu).^2 + (x2-mu).^2 +(x3-mu).^2 +(x4-mu).^2)/va;
 
figure(1);histogram(X12);
figure(2);histogram(X22);
figure(3);histogram(X32);
 
x = 0:0.1:20;
kai2_3 = chi2pdf(x,3);
figure(11);plot(x,kai2_3,'-');
kai2_1 = chi2pdf(x,1);
figure(12);plot(x,kai2_1,'-');
kai2_4 = chi2pdf(x,4);
figure(13);plot(x,kai2_4,'-');