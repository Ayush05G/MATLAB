x = linspace(0, 2, 1000);
sqrt_x = sqrt(x);
erf_x = erf(x);
exp_x = exp(x);

figure;
hold on;
plot(x, exp_x, 'r', 'DisplayName', 'e^x');
plot(x, sqrt_x, 'g', 'DisplayName', 'sqrt(x)');
plot(x, erf_x, 'b', 'DisplayName', 'erf(x)');
hold off;

title('Plot of e^x, erf(x) & sqrt(x)');
xlabel('x');
ylabel('function value');
grid on;
legend show;
