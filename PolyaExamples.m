N = 100;
I = 10000;

subplot(2,2,1);
alpha = [1 1];
Y = zeros(I,2);
for i =1:I
    y = polya(alpha,N);
    Y(i,:) = y;
end
histogram(Y(:,1), -0.5:1:N+sum(alpha)+0.5, 'FaceColor',[0.5 0.5 0.5])
title('$\alpha = \beta = 1$','Interpreter','latex');
xlim([0 100]);
ylim([0 300]);

subplot(2,2,2);
alpha = [2 2];
for i =1:I
    y = polya(alpha,N);
    Y(i,:) = y;
end
histogram(Y(:,1), -0.5:1:N+sum(alpha)+0.5, 'FaceColor',[0.5 0.5 0.5])
title('$\alpha = \beta = 2$','Interpreter','latex');
xlim([0 100]);
ylim([0 300]);

subplot(2,2,3);
alpha = [2 4];
for i =1:I
    y = polya(alpha,N);
    Y(i,:) = y;
end
histogram(Y(:,1), -0.5:1:N+sum(alpha)+0.5, 'FaceColor',[0.5 0.5 0.5])
title('$\alpha = 2, \beta = 4$','Interpreter','latex');
xlim([0 100]);
ylim([0 300]);

subplot(2,2,4);
alpha = [3 1];
for i =1:I
    y = polya(alpha,N);
    Y(i,:) = y;
end
histogram(Y(:,1), -0.5:1:N+sum(alpha)+0.5, 'FaceColor',[0.5 0.5 0.5])
title('$\alpha = 3, \beta=1$','Interpreter','latex');
xlim([0 100]);
ylim([0 300]);