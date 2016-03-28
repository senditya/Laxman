function G = get_style(F)
% given the output of a convolutional layer F, returns G
% G is the gram matrix which is correlation of F

N = size(F,3);

G = zeros(N);

for i=1:N
    for j=1:N
        G(i,j) = sum(sum(F(:,:,i).*F(:,:,j)));
    end
end

end