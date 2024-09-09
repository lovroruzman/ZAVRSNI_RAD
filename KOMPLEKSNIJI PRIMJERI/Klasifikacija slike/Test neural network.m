scores = minibatchpredict(net,imdsValidation);
YValidation = scores2label(scores,classNames);

TValidation = imdsValidation.Labels;
accuracy = mean(YValidation == TValidation);

numValidationObservations = numel(imdsValidation.Files);
idx = randi(numValidationObservations,9,1);

figure
tiledlayout("flow")
for i = 1:9
    nexttile
    img = readimage(imdsValidation,idx(i));
    imshow(img)
    title("Predicted Class: " + string(YValidation(idx(i))))
end