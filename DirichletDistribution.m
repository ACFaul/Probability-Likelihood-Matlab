function y = dirpdf(x,a)
%   Dirichlet probability density function.
%   y = dirpdf(x,a) returns the Dirichlet probability density
%   function with concentration parameters in the row vector a 
%   at each row of x. x must have the same number of columns
%   as a or one less. y is a column vector with the same number 
%   of elements as rows in x.
%   

if nargin ~= 2
   error('Exactly two input arguments are required.');
end

[ra,ca] = size(a);
[rx,cx] = size(x);

if ra ~=1
    error('Second argument needs to be a row vector.');
end

if any(a<0)
    error('Second argument needs to be positive.');
end

if ca == cx+1
    % create last column of x
    x(:,cx+1) = 1 - sum(x,2);
    cx = cx+1;
end

if ca~=cx
    error('Number of columns mismatch');
end

% Find rows of x which do not sum to 1 or 
% have elements out of bounds.
xOut = sum(x,2)>1 | any(x<0|x>1,2);
xIn = ~xOut;

% Initialize y to zero.
y = zeros(rx,1);

% Since the gamma function increases quickly, it is safer to use
% its logarithm. This implementation avoids underflow or overflow.
y(xIn) = prod(x(xIn,:).^(a(1,:)-1),2).*exp(gammaln(sum(a(1,:),2))...
    -sum(gammaln(a(1,:)),2));
y(xOut) = NaN;