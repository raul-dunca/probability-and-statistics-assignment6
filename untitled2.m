X=[7,7,4,5,9,9,4,12,8,1,8,7,3,13,2,1,17,7,12,5,6,2,1,13,14,10,2,4,9,11,3,5,12,6,10,7];
sigma = 5;

%keywords : < -1 (left tailed)       (ex: at least)
%           >  1 (right tailed)      (ex: exceeds)
%           =  0 (two-tailed tailed) (ex: exactly)
u0=input('testing value: ');
alpha=input('significance level: ');

[H, p, ci, z]=ztest(X,u0,sigma,alpha, -1);
RR = [-inf, norminv(alpha)];

fprintf('The value of the test statistic z is %.4f\n', z)
fprintf('The rejection region is (%.4f, %.4f)\n', RR)
fprintf('The P-value of the test is %.4f\n', p)
fprintf('The value of H is %1.0f\n', H)

if H == 1 
    fprintf('\nThe null hypothesis is rejected.\n') 
    fprintf('The data suggests that the standard IS NOT met.\n')
    
else
    fprintf('\nThe null hypothesis is not rejected.\n')
    fprintf('The data suggests that the standard IS met.\n')
    
end




