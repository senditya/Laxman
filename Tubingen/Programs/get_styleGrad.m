function [error, grad] = get_styleGrad(F, A, G)
% INPUTS:   3D convolutional content F
%           2D target 

[R,C,N] = size(F);
M = R*C;

D = (G-A);
error = sum(sum(sum(D.^2)))/(4*N*N*M*M);

grad = zeros([R,C,N]);

for i = 1:N
    %take ith row/column of D
    D_i = D(i,:);
    
    %make it a [R,C,N] matrix from a [1,N] matrix
    D_i = reshape(D_i, [1,1,N]);
    D_i = D_i(ones([1,R]), ones([1,C]), :);
    
    %perform element wise multiplication with F
    multi_grad = F.*D_i;
    
    %add up layers along 3rd axis
    grad(:,:,i) = sum(multi_grad,3);
end

grad = grad/(N*N*M*M);

end