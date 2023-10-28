close all
clear
clc
load MainData_4Sensors_10_13_P216
Data7=MainData;

t7 = 0:0.0001:20; %sampling at niquist rate
c7=input('Enter Bit Depth Of PCM Coding:');
part7 = -1:0.1:1;%A quantization partition defines several contiguous, nonoverlapping ranges
%of values within the set of real numbers.
codebook7 = -1:0.1:1.1;%A codebook tells the quantizer which common value to assign to inputs that
%fall into each range of the partition.
COUNTER7=0:length(Data7)-1;
COUNTER7=COUNTER7';
E0=15000;
Esend=1;
Ecapture=0.3;
tt=0:length(Data7)-1;
ERemaining=E0-(tt*Esend)-(tt*Ecapture);

[~,quants] = quantiz(Data7(:,4),part7,codebook7);%returns a vector that tells which interval each input is in
y = uencode(quants,c7);
ybin=dec2bin(y,c7); %converting it to final binary form to make it transmit ready



% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 

% clc; clear all; close all;
ip= y;  %  input of random bit sequence

% ip=[zeros(1,6) ones(1,12) zeros(1,10) ones(1,5)];
len_ip=length(ip);    %length of input sequence
bit=[];    %sequence of unique bits in input 
len=[];    %length of each bit in input
count=0;    %counter
for i=1:len_ip-1
    if ip(i) == ip(i+1)  %check if consecutive bits are equal
        count=count+1;
        continue
    end
    bit=[bit ip(i)];
    len=[len count+1];
    count=0;
end

last_bit=ip(i+1);
number=len_ip-sum(len);  %checking the number of times last bit occurs
bit=[bit last_bit];  %contains the order of bits (final)
bbit=dec2bin(bit);
 disp(bbit);
len=[len number];     %count of the bits i.e. run length (final)
blen=dec2bin(len);
 disp(blen);

% disp(y);


Er2=E0-(2*length(bit)*Esend)-(tt*Ecapture);
Er3=E0-(2*length(bit)*Esend)-(0.9*tt*Ecapture);
%

 % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 





figure(1);
plot(COUNTER7,Data7(:,1),'linewidth',1.5);
xlabel('Time(sec)');
ylabel('ABPsystolic(mmHg)');


figure(2);
plot(COUNTER7,quants);



figure(3);
plot(COUNTER7,y,'linewidth',1.1);


xlabel('Time(sec)');
ylabel('Amplitude');

figure(4);

plot(tt,ERemaining,'r',tt,Er2,'g',tt,Er3,'b','linewidth',2),legend('Non optimized','SRCM','SRCM*');
xlabel('Time(sec)');
ylabel('Remaining Energy (units)');