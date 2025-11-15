%Tony Ortiz Rangel
%RC Circuit Application
%define some constants
RC = 0.2;
vi = 2;
va = 10;
%Use ode 45 to solve the differential equation
%Solve for voltage after 0.25s
[t,V] = ode45(@(t,V) (va-V)/RC,[0 0.25],vi);
n = length(V);
fprintf("The voltage after 0.25s is %.2f V\n",V(n));
%Solve for voltage after 0.50s
[t,V] = ode45(@(t,V) (va-V)/RC,[0 0.5],vi);
n = length(V);
fprintf("The voltage after 0.50s is %.2f V\n",V(n));
%Solve for voltage after 1.0s
[t,V] = ode45(@(t,V) (va-V)/RC,[0 1.0],vi);
n = length(V);
fprintf("The voltage after 1.0s is %.2f V\n",V(n));
%logical compartison
near8v = V>7.9 & V<8.1;
time8v = t(near8v);
fprintf("It will take %f seconds for the voltage to reach 8V.\n",time8v);
plot(t,V)
ylim([0 10])
grid on
title("The capacitor voltage in a RC circuit")
xlabel("Time (s)")
ylabel("Voltage (V)")
