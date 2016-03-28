function I_new = optimize(I, net, F_photo, F_paint, G_paint)
% one-step of gradient descent
constants;

A_I = vl_simplenn(net, I);
F_I = A_I(conv1_1_ix+1).x;
G_I = get_style(F_I);

w = net.layers{conv1_1_ix}.weights{1,1};
w = permute(w, [1 2 4 3]);
w = rot90(w,2);

b = net.layers{conv1_1_ix}.weights{1,2};
b = reshape(b, [1,1,64]);
b = b(ones([1, im_size(1)]), ones([1, im_size(2)]), :);

pad = net.layers{conv1_1_ix}.pad;

[error_content, content_grad] = get_contentGrad(F_photo, F_I);
[error_style, style_grad] = get_styleGrad(F_paint, G_paint, G_I);

disp([error_content error_style]);

content_grad = content_grad - b;
style_grad = style_grad - b;

grad = alph * vl_nnconv(content_grad, w, [], 'Pad', pad) + bet * vl_nnconv(style_grad, w, [], 'Pad', pad);
I_new = I - lr*grad;


end

