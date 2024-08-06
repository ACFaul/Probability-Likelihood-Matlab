[X,Y] = meshgrid(0:0.001:1, 0:0.001:1);
nx = size(X,1);
ny = size(Y,1);
Z = ones(nx,ny)-X-Y;
Zout = (Z<0);
Z(Zout) = NaN;
x = [X(:), Y(:)];

subplot(3,2,1);
a =[1 1 1];
y =dirpdf(x,a);
y = reshape(y,nx,ny);
surf(X,Y,Z,y,'FaceColor','interp','EdgeColor','interp')
title('$\alpha = (1,1,1)^T$','Interpreter','latex');
colorbar;
ax = gca;
ax.XAxisLocation = 'origin';
ax.XDir = 'reverse';
ax.XTick = [0 1];
ax.YAxisLocation = 'origin';
ax.YDir = 'reverse';
ax.YTick = [0 1];
ax.ZTick = [1];

subplot(3,2,5);
a =[0.8 2 2];
y =dirpdf(x,a);
y = reshape(y,nx,ny);
surf(X,Y,Z,y,'FaceColor','interp','EdgeColor','interp')
title('$\alpha = (0.8,2,2)^T$','Interpreter','latex');
colorbar;
ax = gca;
ax.XAxisLocation = 'origin';
ax.XDir = 'reverse';
ax.XTick = [0 1];
ax.YAxisLocation = 'origin';
ax.YDir = 'reverse';
ax.YTick = [0 1];
ax.ZTick = [1];

subplot(3,2,6);
a =[0.8 0.8 2];
y =dirpdf(x,a);
y = reshape(y,nx,ny);
surf(X,Y,Z,y,'FaceColor','interp','EdgeColor','interp')
title('$\alpha = (0.8,0.8,2)^T$','Interpreter','latex');
colorbar;
ax = gca;
ax.XAxisLocation = 'origin';
ax.XDir = 'reverse';
ax.XTick = [0 1];
ax.YAxisLocation = 'origin';
ax.YDir = 'reverse';
ax.YTick = [0 1];
ax.ZTick = [1];

subplot(3,2,2);
a =[5 5 5];
y =dirpdf(x,a);
y = reshape(y,nx,ny);
surf(X,Y,Z,y,'FaceColor','interp','EdgeColor','interp')
title('$\alpha = (5,5,5)^T$','Interpreter','latex');
colorbar;
ax = gca;
ax.XAxisLocation = 'origin';
ax.XDir = 'reverse';
ax.XTick = [0 1];
ax.YAxisLocation = 'origin';
ax.YDir = 'reverse';
ax.YTick = [0 1];
ax.ZTick = [1];

subplot(3,2,4);
a =[5 2 2];
y =dirpdf(x,a);
y = reshape(y,nx,ny);
surf(X,Y,Z,y,'FaceColor','interp','EdgeColor','interp')
title('$\alpha = (5,2,2)^T$','Interpreter','latex');
colorbar;
ax = gca;
ax.XAxisLocation = 'origin';
ax.XDir = 'reverse';
ax.XTick = [0 1];
ax.YAxisLocation = 'origin';
ax.YDir = 'reverse';
ax.YTick = [0 1];
ax.ZTick = [1];

subplot(3,2,3);
a =[5 5 2];
y =dirpdf(x,a);
y = reshape(y,nx,ny);
surf(X,Y,Z,y,'FaceColor','interp','EdgeColor','interp')
title('$\alpha = (5,5,2)^T$','Interpreter','latex');
colorbar;
ax = gca;
ax.XAxisLocation = 'origin';
ax.XDir = 'reverse';
ax.XTick = [0 1];
ax.YAxisLocation = 'origin';
ax.YDir = 'reverse';
ax.YTick = [0 1];
ax.ZTick = [1];
