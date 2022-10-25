y_permutations = 0;
x_permuations = 0;
y_results = zeros(18);
x_results = zeros(6);
for first = 1:6
    x_permuations = x_permuations + 1;
    x_results(first) = x_results(first) + 1;
    for second = 1:6
        for third = 1:6
            y_permutations = y_permutations + 1;
            sum = first + second + third;
            y_results(sum) = y_results(sum) + 1;
        end
    end
end
pdf_y = zeros(18);
cdf_y = zeros(18);
pdf_x = zeros(6);
cdf_x = zeros(6);
for i = 3:18
    pdf_y(i) = y_results(i) / y_permutations;
    cdf_y(i) = cdf_y(i - 1) + pdf_y(i);
    %fprintf("%d\n", pdf_y(i));
end
fprintf("\n\n\n\n");
for i = 1:6
    pdf_x(i) = x_results(i) / x_permuations;
    if (i == 1)
        cdf_x(i) = pdf_x(i);
        continue;
    end
    cdf_x(i) = cdf_x(i - 1) + pdf_x(i);
    %fprintf("%d\n", pdf_x(i));
end
plot(pdf_y, '.');
hold on;
xline(0);
yline(0);
plot(pdf_x, '.');
hold on;
plot(cdf_y, '.');
hold on;
plot(cdf_x, '.');
