function Y=NEWS_Main(x)
Y=zeros(1,4);
%% Sensor ABP sys
if x(1)<=90 || x(1)>=220
    Y(1)=3;
end
if x(1)<=100 && x(1)>=91
    Y(1)=2;
end
if x(1)<=110 && x(1)>=101
    Y(1)=1;
end

if x(1)<=219 && x(1)>=111
    Y(1)=0;
end
%% Sensor HR
if x(2)<=40 || x(1)>=131
    Y(2)=3;
end
if x(2)<=130 && x(2)>=111
    Y(2)=2;
end
if (x(2)<=50 && x(2)>=41) || (x(2)<=110 && x(2)>=91)
    Y(2)=1;
end

if  x(2)<=90 && x(2)>=51
    Y(2)=0;
end
%% Sensor RESP
if x(3)<=8 || x(3)>=25
    Y(3)=3;
end
if  x(3)>=21 && x(3)<=24
    Y(3)=2;
end
if x(3)<=11 && x(3)>=9
    Y(3)=1;
end

if x(3)<=20 && x(3)>=12
    Y(3)=0;
end
%% Sensor SpO2
if x(4)<=91
    Y(4)=3;
end
if  x(4)>=92 && x(4)<=93
    Y(4)=2;
end
if x(4)<=95 && x(4)>=94 
    Y(4)=1;
end

if x(4)>=96
    Y(4)=0;
end
end
