% �m�����x�֐��O���t�v���b�g

clc, clear, close all; %�����ݒ�(��ʃN���A���j
warning('off');
%
%  �񍀕��z�̍�}
%  
%
%
%  �񍀕��z�̍�}
%
%
n = 1000;        %���s��
p = 1.0/3.0;    %
q = 1 - p;      %

for k = 1:n
     P_bin(k) = nchoosek(n,k) * p^k * (1-p)^(n - k);
end

%
%   x=[mu - 3*sigma, mu + 3*sigm] �͈̔͂ŕ\������悤�ɕύX
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
%  ���K���z�̍�}
%

normal = (1/(sqrt(2*pi)*sigma))*exp(-((x - mu).^2)/(2*sigma^2)); %�m�����x

figure(1);

plot(x,niko,'o', x,normal);
xlabel('�m���ϐ� X');
ylabel('�m�����x pd');
grid on; %�O���t�`��
title('�m�����x�֐�');
legend('�񍀕��z', '���K���z');
