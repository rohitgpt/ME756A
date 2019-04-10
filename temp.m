open_system('ex_ToWorkspace_ToFile');

set_param('ex_ToWorkspace_ToFile/To Workspace',...
    'VariableName','simoutToWorkspace')

set_param('ex_ToWorkspace_ToFile/To File',...
    'FileName','simoutToFile.mat',...
    'MatrixName','simoutToFileVariable')

out = sim('ex_ToWorkspace_ToFile');

load('simoutToFile.mat')

subplot(2,1,1)
plot(out.simoutToWorkspace,'-o')
legend('simoutToWorkspace')

subplot(2,1,2)
plot(simoutToFileVariable,'-o')
legend('simoutToFileVariable')
