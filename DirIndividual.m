[X,Y] = meshgrid(0:0.001:1, 0:0.001:1);
nx = size(X,1);
ny = size(Y,1);
Z = ones(nx,ny)-X-Y;
Zout = (Z<0);
Z(Zout) = NaN;
x = [X(:), Y(:)];

figure;
a =[0.8 0.8 2];
y =dirpdf(x,a);
y = reshape(y,nx,ny);
surf(X,Y,Z,y,'FaceColor','interp','EdgeColor','interp')
title('$\alpha = (0.8,0.8,2)^T$','Interpreter','latex','FontSize',20);
colorbar;
ax = gca;
ax.FontSize = 20;
ax.XAxisLocation = 'origin';
ax.XDir = 'reverse';
ax.XTick = [0 1];
ax.YAxisLocation = 'origin';
ax.YDir = 'reverse';
ax.YTick = [0 1];
ax.ZTick = [1];