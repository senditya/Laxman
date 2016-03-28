constants;

I_paint = imresize(single(imread(starry)), im_size);
I_photo = imresize(single(imread(neckerfront)), im_size);

net = load('imagenet-vgg-19.mat');

A_paint = vl_simplenn(net, I_paint);
A_photo = vl_simplenn(net, I_photo);

F_paint = A_paint(conv1_1_ix+1).x;
F_photo = A_photo(conv1_1_ix+1).x;

G_paint = get_style(F_paint);

I = single(randn([im_size,3]));