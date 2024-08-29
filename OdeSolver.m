function ppgrlcckt

T=0.1;     %simulation Time..
x0=[0;0];

tspan=[0,T];
[t,x]=ode45(@(t,x)RLCcktfcn(t,x),tspan,x0);
Ii=x(:,1);   Vc=x(:,2);

subplot(2,1,1); plot(t,Vc,'r','LineWidth',0.75);grid on;
title('Series RLC Circuit-Voltage across Capacitor');
xlabel('Time (sec)'); ylabel('Voltage(V)');

subplot(2,1,2);plot(t,Ii,'r','linewidth',0.75);grid on;
title('Series RLC Circuit-Current thru Inductor');
xlabel('Time(sec)'); ylabel('Current(A)');
end
function y=RLCcktfcn(t,x)
R=10;
L=100e-3;
C=50e-6;
Vi=100;
y=[-R/L,-1/L;1/C,0]*x+[1/L;0]*Vi;
end