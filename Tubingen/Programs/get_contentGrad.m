function [error, G] = get_contentGrad(F, P)
% INPUT:    l-th convolutional layer for target image: F
%           l-th convolutional layer for random image: P
%OUTPUT:    scalar error value, 3D gradient matrix

assert(isequal(size(F), size(P)), 'Dimensions for convolutional layers for target and input must match');

error = 0.5 * sum(sum(sum((F-P).^2)));

Z = (F>0);
G = Z.*(F-P);

end

