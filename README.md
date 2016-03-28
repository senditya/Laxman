# Laxman
System to translate comics of one style to another: might finally end up in auto-caricature device

The inspiration for this: http://i.imgur.com/W4Pifhl.jpg

My proposed way of approach will be to separate the style and content in an image[1]. If we are capable of this, then by studying the styles across multiple images by the same artist, we should be able to identify the most basic generic style that belongs to all the images which should be interpreted as the style of the artist himself. This artistic style may be combined with the content of any image to render the image in that artist's style.

Here is a very small presentation with some images to clarify my approach: https://github.com/shiladityasen/Laxman/blob/master/presentation.key

The work by Gatys, Ecker and Bethge [1] uses a convolutional neural network, specifically VGG-Net for separating the style and content. I have used the publicly available pre-trained VGG-19 model by the MatConvNet[2] as a plugin with Matlab. Details about the code written by me to reproduce the results obtained in [1] are available in the directory Tubingen/Programs
