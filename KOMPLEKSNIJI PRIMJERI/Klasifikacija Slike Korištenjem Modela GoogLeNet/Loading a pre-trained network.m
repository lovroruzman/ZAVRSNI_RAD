[net,classNames] = imagePretrainedNetwork("googlenet");
inputSize = net.Layers(1).InputSize;
numClasses = numel(classNames);
disp(classNames(randperm(numClasses,10)))

I = imread("peppers.png");
figure
imshow(I)