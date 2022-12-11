numIterations = 100;

x = [1, 2, 3, 4, 5, 6];

pmf_x = (1 / length(x) * ones(1, length(x)));

x1 = rand_gen(x, pmf_x, numIterations);
x2 = rand_gen(x, pmf_x, numIterations);
x3 = rand_gen(x, pmf_x, numIterations);

y = x1 + x2 + x3;

H = zeros(1, 18);
for i = 1:numIterations
    H(y(i)) = H(y(i)) + 1;
end

fig = figure('Name', 'Occurrence Count');
stem(1:18, H, 'r', 'LineWidth', 1.3);
title('Occurrences From Sum of Random Dice Rolls');
set(gca, 'FontSize', 12);
ax = gca;
ax.XLabel.String = 'Sum of Dice Value';
ax.XLim = [0, 19];
ax.YLabel.String = 'Count';
ax.YLim = [0, max(H) + 5];