x0 = rand(10 ,1)
% options = optimset("display", "iter", ...
%                     "PlotFcns", @optimplotfval);
% [y, fval, exitflag, output] = fminsearch(@sphere, x0, options);

options = optimset('OutputFcn', @outfun);
hold on 
[x fval] = fminsearch(@sphere, x0, options)
hold off

