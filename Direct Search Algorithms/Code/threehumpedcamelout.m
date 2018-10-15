function stop = threehumpedcamelout(x,~,state)
persistent ph
stop = false;
switch state
    case 'init'
       newplot
       xx = -5:.2:5;
       yy = -5:.2:5;
       [xx,yy] = meshgrid(xx,yy);
       zz = 2*xx.^2 - 1.05*xx.^4 + xx.^6/6 + xx.*yy + yy.^2;
       % Set up the appropriate colormap
       % In this case, the colormap has been chosen to give the surf plot
       % a nice healthy banana color.
       hsv2 = hsv;
       hsv3 = [hsv2(11:64,:);hsv2(1:10,:)];
       % draw the surf plot
       surface(xx,yy,zz,'EdgeColor',[0.8,0.8,0.8]);
       xlabel 'x(1)'
       ylabel 'x(2)'
       view(10,55);
       colormap(hsv3);
       hold on;
       [~,contHndl] = contour3(xx,yy,zz,[100,500],'k');
       contHndl.Color = [0.8,0.8,0.8];
       
       plot3(x(1),x(2),267.62,'ko','MarkerSize',15,'LineWidth',2);
       text(x(1)+.1,x(2)+.4,267.62,'   Start','Color',[0 0 0]);
       plot3(0,0,0,'ko','MarkerSize',15,'LineWidth',2);
       text(0.2,0.4,0,'   Solution','Color',[0 0 0]);
       drawnow

    case 'iter'
        x1 = x(1);
        y1 = x(2);
        z1 = 2*x1.^2 - 1.05*x1.^4 + x1.^6/6 + x1.*y1 + y1.^2;
        ph = plot3(x1,y1,z1,'r.','MarkerSize',25);
        h = gca;
        h.SortMethod = 'childorder';
        drawnow;
        
    case 'done'
        legend(ph,'Iterative steps','Location','east')
        hold off
end