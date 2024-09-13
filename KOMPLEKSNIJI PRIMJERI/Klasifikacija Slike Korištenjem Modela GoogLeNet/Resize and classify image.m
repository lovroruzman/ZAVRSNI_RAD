size(I)
X = imresize(I,inputSize(1:2));
figure
imshow(X)

X = single(X);
if canUseGPU
    X = gpuArray(X);
end
scores = predict(net,X);

[label,score] = scores2label(scores,classNames);
figure
imshow(I)
title(string(label) + ", " + score)