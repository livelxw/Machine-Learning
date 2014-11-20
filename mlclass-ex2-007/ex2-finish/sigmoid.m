function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

x1 = x2 = x3 = ones(size(z));

x1 = x1 .* e;
x2 = x1.^(-z);
g = x3./(x3 .+ x2);


% =============================================================

end
