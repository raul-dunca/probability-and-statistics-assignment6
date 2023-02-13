%2 b)

X1 = [22.4 21.7 24.5 23.4 21.6 23.3 22.4 21.6 24.8 20.0];
X2 = [17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2];

n1 = length(X1);
n2 = length(X2);

%NOTE: z is a strunct: z.df= n(degree of freedom) in this case, z.tstat = valuea of the test
%,z .sd = standar deviation

alpha = input('significance level: ');
%NOTE: you can use 'equal' or 'unequal'
[H, p, ci, z]= ttest2(X1, X2, alpha,1,'equal');
f1 = tinv(1-alpha,z.df);

fprintf('The rejection region for F is (%6.4f, %6.4f)\n',f1,inf)
fprintf('The value of the test statistic F is %6.4f\n', z.tstat)
fprintf('The P-value for the variances test is %6.4f\n', p)

if H == 1 
    fprintf('\nThe null hypothesis is rejected, i.e gas mileage seem to be higher, on average, when premium gasoline is  used \n') 
else
    fprintf('\nThe null hypothesis is not rejected, i.e gas mileage seem to be higher, on average, when premium gasoline is not used\n')
end