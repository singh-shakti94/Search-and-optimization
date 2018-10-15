function [x fval history] = new_fminsearch(x0, optimFunc, optNew)
    history = [];
    optOld = optimset('OutputFcn', @myoutput);
    options = optimset(optOld, optNew);
    [x ,fval] = fminsearch(optimFunc, x0,options)
        
    function stop = myoutput(x,optimvalues,state)
        stop = false;
        if isequal(state,'iter')
          history = [history; [optimvalues.funccount, optimvalues.fval]];
        end
    end
end