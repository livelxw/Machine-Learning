function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


x1 = ones(size(X));

y1 = ones(size(y));

t = ones(size(theta)) * 2;

d = (-y .* log(sigmoid(X*(theta)))) - ((y1 .- y) .* log(y1 .- sigmoid(X*(theta))));


J = (1/m) * (sum(d)) + lambda / (2 * m) *(sum(theta.^t) - theta(1).^2);


d2 = (sigmoid(X*(theta)) - y);

grad(1) = grad(1) = 1/m * sum(d2.*X(:, 1));

for i = 2 : size(X, 2)
    grad(i) = 1/m * sum(d2.*X(:, i)) + lambda / m * theta(i);



% =============================================================

end
