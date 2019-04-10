%Model Parameters
%M,c,k are system parameters
%m, ca, ka are dva parameters
M = 200; m = 10; %units kg
c = 500; ca = 50; %units N(s/m)
k = 200000; ka = 10000; %units N/m

%loading model
% load_system('DVA');
open_system('DVA');

%Running simulation
tmp = sim('DVA', 'ReturnWorkspaceOutputs', 'on');
simout = tmp.get('simout');

%Plotting the results
a = figure(1);
simout.signal2.plot();
hold on;
simout.signal3.plot();
hold off;
title('Displacement of system and DVA');
legend('System', 'DVA');
xlabel('Time [s]');
ylabel('Displacement [m]');
saveas(a, 'Displacement of system and DVA.jpg');

b = figure(2);
simout.signal1.plot();
hold on
simout.signal2.plot();
hold off;
title('Comparision between system with and without DVA');
legend('Without DVA', 'With DVA');
xlabel('Time [s]');
ylabel('Displacement [m]');
saveas(b, 'Comparision between system with and without DVA.jpg');
