function [x fval history] = new_patternsearch(x0, optimFunc, optNew)
    history = [];
    A = [];
    b = [];
    Aeq = [];
    beq = [];
    lb = [];
    ub = [];
    nonlcon = [];
    options = optimoptions( optNew, 'PlotFcn', @plotfun);
%     options = optimoptions(optOld, optNew)
    [x, fval] = patternsearch(optimFunc, x0, A, b, Aeq, beq, ...
                                lb, ub, nonlcon, options);
        
    function stop = plotfun(optimvalues, flag)
        stop = false;
        if isequal(flag,'iter')
          history = [history; [optimvalues.funccount, optimvalues.fval]];
        end
    end
end