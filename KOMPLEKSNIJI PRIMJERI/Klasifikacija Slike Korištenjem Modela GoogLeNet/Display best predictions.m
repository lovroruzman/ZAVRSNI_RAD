[~,idx] = sort(scores,"descend");
idx = idx(5:-1:1);
classNamesTop = classNames(idx);
scoresTop = scores(idx);

figure
barh(scoresTop)
xlim([0 1])
title("Top 5 Predictions")
xlabel("Probability")
yticklabels(classNamesTop)