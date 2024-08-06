function y = polya(alpha,N)
%   Polya urn simulation function
%   alpha is a vector containing the inital number of balls of 
%   each colour. The number of colours is the length of alpha.
%   After N -sum(alpha) draws, y contains the final number of 
%   balls of each colour in the urn.
%
if nargin ~= 2
   error('Exactly two input arguments are required.');
end

[ra,ca] = size(alpha);
if ra >1 && ca>1
    error('First argument needs to be a vector.');
end

% Initialise the urn with alpha which specifies the
% number of balls of two different colours.
y =alpha;

for n=1:N-sum(alpha)
    % Calculate the proportions of each colour.
    p = y/sum(y);
    % Choose a random index according to the proportions.
    idx = randsample(length(p),1,true,p);
    % Add a ball of the colour indicated by the index.
    y(idx) = y(idx)+1;
end

% Final number of balls:
N = 100;
% Number of experiments:
I = 10000;

% Initialising alpha.
alpha = [1 1];
% Initialising experiments.
Y = zeros(I,2);

% Run experiments:
for i =1:I
    y = polya(alpha,N);
    Y(i,:) = y;
end

% Plot histogram of experiment outcomes.
histogram(Y(:,1), -0.5:1:N+sum(alpha)+0.5, 'FaceColor',[0.5 0.5 0.5])
title('$\alpha = \beta = 1$','Interpreter','latex');
xlim([0 100]);
ylim([0 300]);
