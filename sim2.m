H = load('H.mat').H;

probX_20_70 = sum(sum(H(60:1:101, 10)));

fprintf("'%d\n", probX_20_70);


figure;
probX_Y40 = H(:, 41) / sum(H(:, 41));
stem(0:100, probX_Y40);
xlabel('x');
ylabel('p_{x|y}(x|40)');
title('Conditional Probabilty Mass Function Where y = 40')

figure;
probX_Y10 = H(:, 11) / sum(H(:, 11));
stem(0:100, probX_Y10);
xlabel('x');
ylabel('p_{x|y}(x|10)');
title('Conditional Probabilty Mass Function Where y = 10')