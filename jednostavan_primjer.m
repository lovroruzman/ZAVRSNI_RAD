I = imread("big_ferit.jpg");

bbox = detectTextCRAFT(I);

Iout = insertShape(I,"rectangle",bbox,LineWidth=3);

figure

imshow(Iout)
