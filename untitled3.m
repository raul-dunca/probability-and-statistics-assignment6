% b) sigma unknown 
X=[7,7,4,5,9,9,4,12,8,1,8,7,3,13,2,1,17,7,12,5,6,2,1,13,14,10,2,4,9,11,3,5,12,6,10,7];

n = length(X);

u0=input('testing value: ');
alpha=input('significance level: ');

[H, p, ci, z] = ttest(X, u0, alpha, 1);
RR = [tinv(1-alpha, n-1), inf];

fprintf('The value of the test statistic z is %.4f\n', z.tstat)
fprintf('The rejection region is (%.4f, %.4f)\n', RR)
fprintf('The P-value of the test is %.4f\n', p)


if H == 1 
    fprintf('\nThe null hypothesis is rejected.\n') 
    fprintf('The data suggests that the average exceeds 5.5.\n')
else
    fprintf('\nThe null hypothesis is not rejected.\n')
    fprintf('The data suggests that the average DOES NOT exceed 5.5.\n')
end