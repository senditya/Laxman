conv1_1_ix = 1;
conv2_1_ix = 6;
conv3_1_ix = 11;
conv4_1_ix = 20;
conv5_1_ix = 29;

image_dir = '../Images/';

starry = strcat(image_dir, 'composition.jpg');
neckerfront = strcat(image_dir, 'neckarfront.jpg');

im_size = [400,640];

alpha_beta_ratio = 10e-4;
alph = alpha_beta_ratio/(1+alpha_beta_ratio);
bet = 1/(1+alpha_beta_ratio);

lr = 10e-3;
max_iters = 100;
iters = 10;