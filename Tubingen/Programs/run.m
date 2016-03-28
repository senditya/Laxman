initialize
disp('Initialization complete... Generating image from random white-noise image');
for i = 1:iters
disp(i);
I = optimize(I, net, F_photo, F_paint, G_paint);
end