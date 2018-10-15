%% Default parameters
% x0 = rand(2 ,1)
% options = optimoptions('patternsearch')
% [x, fval, history1] = new_patternsearch(x0, @sphere, options);
% plot(history1(:,1), log(history1(:,2)), "Linewidth", 2)
% title('Pattern Search on Sphere function (2D)')
% xlabel('Iterations')
% ylabel('log(fval)')

%% Sphere function (4D)
% x0 = rand(4 ,1)
% options = optimoptions('patternsearch')
% [x, fval, history2] = new_patternsearch(x0, @sphere, options);
% plot(history2(:,1), log(history2(:,2)), "Linewidth", 2)
% title('Pattern Search on Sphere function (2D)')
% xlabel('Iterations')
% ylabel('log(fval)')


%% Sphere 2D(Default param)
x0 = rand(2 ,1)
options = optimoptions('patternsearch')
[x, fval, history2] = new_patternsearch(x0, @sphere, options);
plot(history2(:,1), log(history2(:,2)), "Linewidth", 2)
title('patternsearch on Sphere function (2D)')
xlabel('Iterations')
ylabel('log(fval)')

% iters_sp_2d = []
% for i=1:10
%     x0 = rand(2 ,1)
%     options = optimset();
%     [x, fval, history2] = new_patternsearch(x0, @sphere, options);
%     iters_sp_2d = [iters_sp_2d; history2(end:end,1)];
% end
% mean_iters_2d = mode(iters_sp_2d)


%% Sphere 4D(new Param)
x0 = rand(4 ,1)
options = optimoptions('patternsearch')
[x, fval, history4] = new_patternsearch(x0, @sphere, options);
plot(history4(:,1), log(history4(:,2)), "Linewidth", 2)
title('patternsearch on Sphere function (4D)')
xlabel('Iterations')
ylabel('log(fval)')

% iters_sp_4d = []
% for i=1:10
%     x0 = rand(4 ,1)
%     [x, fval, history4] = new_patternsearch(x0, @sphere, options);
%     iters_sp_4d = [iters_sp_4d; history4(end:end,1)];
% end
% mean_iters_4d = mode(iters_sp_4d)

%% Sphere 8D(new Param)
x0 = rand(8 ,1)
options = optimoptions('patternsearch')
[x, fval, history8] = new_patternsearch(x0, @sphere, options);
plot(history8(:,1), log(history8(:,2)), "Linewidth", 2)
title('patternsearch on Sphere function (8D)')
xlabel('Iterations')
ylabel('log(fval)')

% iters_sp_8d = []
% for i=1:10
%     x0 = rand(8 ,1)
%     options = optimset();
%     [x, fval, history8] = new_patternsearch(x0, @sphere, options);
%     iters_sp_8d = [iters_sp_8d; history8(end:end,1)];
% end
% mean_iters_8d = mode(iters_sp_8d)

plot(history8(:,1), log(history8(:,2)),...
    history4(:,1), log(history4(:,2)),...
    history2(:,1), log(history2(:,2)),"Linewidth", 2)
title('patternsearch on Sphere function')
xlabel('Iterations')
ylabel('log(fval)')
legend("8D", "4D", "2D", "location", 'northeast')

%% Noisy Sphere 2D(Default param)
x0 = rand(2 ,1)
options = optimoptions('patternsearch')
[x, fval, history2] = new_patternsearch(x0, @noisy_sphere, options);
plot(history2(:,1), log(history2(:,2)), "Linewidth", 2)
title('patternsearch on Noisy Sphere function (2D)')
xlabel('Iterations')
ylabel('log(fval)')

% iters_sp_2d = []
% for i=1:10
%     x0 = rand(2 ,1)
%     options = optimset();
%     [x, fval, history2] = new_patternsearch(x0, @noisy_sphere, options);
%     iters_sp_2d = [iters_sp_2d; history2(end:end,1)];
% end
% mean_iters_2d = mode(iters_sp_2d)


%% Noisy Sphere 4D(new Param)
x0 = rand(4 ,1)
options = optimoptions('patternsearch')
[x, fval, history4] = new_patternsearch(x0, @noisy_sphere, options);
plot(history4(:,1), log(history4(:,2)), "Linewidth", 2)
title('patternserach on Noisy Sphere function (4D)')
xlabel('Iterations')
ylabel('log(fval)')

% iters_sp_4d = []
% for i=1:10
%     x0 = rand(4 ,1)
%     options = optimset();
%     [x, fval, history4] = new_patternsearch(x0, @noisy_sphere, options);
%     iters_sp_4d = [iters_sp_4d; history4(end:end,1)];
% end
% mean_iters_4d = mode(iters_sp_4d)

%% Noisy Sphere 8D(new Param)
x0 = rand(8 ,1)
options = optimoptions('patternsearch')
[x, fval, history8] = new_patternsearch(x0, @noisy_sphere, options);
plot(history8(:,1), log(history8(:,2)), "Linewidth", 2)
title('pattern search on  Noisy Sphere function (8D)')
xlabel('Iterations')
ylabel('log(fval)')

% iters_sp_8d = []
% for i=1:10
%     x0 = rand(8 ,1)
%     options = optimoptions('patternsearch')
%     [x, fval, history8] = new_patternsearch(x0, @noisy_sphere, options);
%     iters_sp_8d = [iters_sp_8d; history8(end:end,1)];
% end
% mean_iters_8d = mean(iters_sp_8d, "native")

plot(history8(:,1), log(history8(:,2)),...
    history4(:,1), log(history4(:,2)),...
    history2(:,1), log(history2(:,2)),"Linewidth", 2)
title('patternsearch on Noisy Sphere function')
xlabel('Iterations')
ylabel('log(fval)')
legend("8D", "4D", "2D", "location", 'northeast')

% %% Sphere better viz (new Param)
% x0 = [-4, 2]
% options = optimset("OutputFcn", @sphereout, 'TolFun',1e-7,'TolX',1e-7);
% [x, fval, history2] = new_fminsearch(x0, @new_sphere, options);
% % plot(history2(:,1), log(history2(:,2)), "Linewidth", 2)
% title('fminsearch on Sphere function (4D)')
% % xlabel('Iterations')
% % ylabel('log(fval)')

%% Rosenbrock function 2D
x0 = rand(2, 1)
options = optimoptions('patternsearch', "MaxIterations", 1000)
[x, fval, history2] = new_patternsearch(x0, @rosenbrock, options);
plot(history2(:,1), log(history2(:,2)), "Linewidth", 2)
title('patternsearch on Rosenbrock function 2D')
xlabel('Iterations')
ylabel('log(fval)')

%% Rosenbrock function 4D
x0 = rand(4, 1)
options = optimoptions('patternsearch')
[x, fval, history4] = new_patternsearch(x0, @rosenbrock, options);
plot(history4(:,1), log(history4(:,2)), "Linewidth", 2)
title('patternsearch on Rosenbrock function 4D')
xlabel('Iterations')
ylabel('log(fval)')

%% Rosenbrock function 8D
x0 = rand(8, 1)
options = optimoptions('patternsearch')
[x, fval, history8] = new_patternsearch(x0, @rosenbrock, options);
plot(history8(:,1), log(history8(:,2)), "Linewidth", 2)
title('patternsearch on Rosenbrock function 8D')
xlabel('Iterations')
ylabel('log(fval)')

plot(history8(:,1), log(history8(:,2)),...
    history4(:,1), log(history4(:,2)),...
    history2(:,1), log(history2(:,2)),"Linewidth", 2)
title('patternsearch on Rosenbrock function')
xlabel('Iterations')
ylabel('log(fval)')
legend("8D", "4D", "2D", "location", 'northeast')

% %% Rosenbrock function 16D
% x0 = rand(16, 1)
% options = optimoptions('patternsearch')
% [x, fval, history16] = new_patternsearch(x0, @rosenbrock, options);
% plot(history16(:,1), log(history16(:,2)), "Linewidth", 2)
% title('patternsearch on Rosenbrock function 16D')
% xlabel('Iterations')
% ylabel('log(fval)')
% 
% plot(history16(:,1), log(history16(:,2)),...
%      history8(:,1), log(history8(:,2)),...
%     history4(:,1), log(history4(:,2)),...
%     history2(:,1), log(history2(:,2)),"Linewidth", 2)
% title('patternsearch on Rosenbrock function')
% xlabel('Iterations')
% ylabel('log(fval)')
% legend("16D", "8D", "4D", "2D", "location", 'northeast')

% %% Rosenbrock function better viz
% x0 = [2, -1.9]
% options = optimset("OutputFcn", @bananaout);
% [x, fval, history1] = new_fminsearch(x0, @rosenbrock, options);
% % plot(history1(:,1), log(history1(:,2)), "Linewidth", 2)
% title('fminsearch on Rosenbrock function')
% % xlabel('Iterations')
% % ylabel('log(fval)')

%% Rastrigin 2D
x0 = rand(2, 1)
options = optimoptions('patternsearch')
[x, fval, history2] = new_patternsearch(x0, @rastrigin, options);
plot(history2(:,1), log(history2(:,2)), "Linewidth", 2)
title('patternsearch on Rastrigin function 2D')
xlabel('Iterations')
ylabel('log(fval)')


% %% Rastrigin 4D
% x0 = rand(4, 1)
% options = optimoptions('patternsearch')
% [x, fval, history4] = new_patternsearch(x0, @rastrigin, options);
% plot(history4(:,1), log(history4(:,2)), "Linewidth", 2)
% title('pattensearch on Rastrigin function 4D')
% xlabel('Iterations')
% ylabel('log(fval)')

% %% three hump camel function better viz
% x0 = [-4, 1.5]
% options = optimset("OutputFcn", @threehumpedcamelout);
% [x, fval, history1] = new_fminsearch(x0, @threehumpcamel, options);
% fval
% % plot(history1(:,1), history1(:,2), "Linewidth", 2)
% % title('fminsearch on three hump camel function')
% % xlabel('Iterations')
% % ylabel('fval')


%% cigar function 2D
x0 = rand(2, 1)
options = optimoptions('patternsearch')
[x, fval, history2] = new_patternsearch(x0, @cigar, options);
plot(history2(:,1), log(history2(:,2)), "Linewidth", 2)
title('patternsearch on Cigar function 2D')
xlabel('Iterations')
ylabel('log(fval)')

%% cigar function 4D
x0 = rand(4, 1)
options = optimoptions('patternsearch')
[x, fval, history4] = new_patternsearch(x0, @cigar, options);
plot(history4(:,1), log(history4(:,2)), "Linewidth", 2)
title('patternsearch on Cigar function 4D')
xlabel('Iterations')
ylabel('log(fval)')

%% Cigar function 8D
x0 = rand(8, 1)
options = optimoptions('patternsearch')
[x, fval, history8] = new_patternsearch(x0, @cigar, options);
plot(history8(:,1), log(history8(:,2)), "Linewidth", 2)
title('patternsearch on Cigar function 8D')
xlabel('Iterations')
ylabel('log(fval)')

plot(history8(:,1), log(history8(:,2)),...
    history4(:,1), log(history4(:,2)),...
    history2(:,1), log(history2(:,2)),"Linewidth", 2)
title('patternsearch on Cigar function')
xlabel('Iterations')
ylabel('log(fval)')
legend("8D", "4D", "2D", "location", 'northeast')


%% rotated cigar function 2D
x0 = rand(2, 1)
options = optimoptions('patternsearch')
[x, fval, history2] = new_patternsearch(x0, @rotated_cigar, options);
plot(history2(:,1), log(history2(:,2)), "Linewidth", 2)
title('patternsearch on rotated Cigar function 2D')
xlabel('Iterations')
ylabel('log(fval)')

%% rotated cigar function 4D
x0 = rand(4, 1)
options = optimoptions('patternsearch')
[x, fval, history4] = new_patternsearch(x0, @rotated_cigar, options);
plot(history4(:,1), log(history4(:,2)), "Linewidth", 2)
title('patternsearch on rotated Cigar function 4D')
xlabel('Iterations')
ylabel('log(fval)')

%% rotated Cigar function 8D
x0 = rand(8, 1)
options = optimoptions('patternsearch')
[x, fval, history8] = new_patternsearch(x0, @rotated_cigar, options);
plot(history8(:,1), log(history8(:,2)), "Linewidth", 2)
title('patternsearch on Cigar function 8D')
xlabel('Iterations')
ylabel('log(fval)')

plot(history8(:,1), log(history8(:,2)),...
    history4(:,1), log(history4(:,2)),...
    history2(:,1), log(history2(:,2)),"Linewidth", 2)
title('fminsearch on Cigar function')
xlabel('Iterations')
ylabel('log(fval)')
legend("8D", "4D", "2D", "location", 'northeast')
