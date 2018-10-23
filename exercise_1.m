clc, clear all,close all
x=[23.80,27.60,31.60,32.40,33.70,34.90,43.20,52.80,63.80,73.40];

y=[41.4,51.8,61.70,67.90,68.70,77.50,95.90,137.40,155.0,175.0];


plot(x,y,'r*')

xlabel('x(职工工资数）','fontsize',12)
ylabel('y(商品零售总额)','fontsize',12)
set(gca,'linewith',2);

Lxx=sum((x-mean(x)).^2);
Lxy=sum((x-mean(x)).*(y-mean(y)));
b1=Lxy/Lxx;
b0=mean(y)-b1*mean(x);
y1=b1*x+b0;
hold on

plot(x,y1,'linewidth',2);
m2 = LinearModel.fit(x,y);
