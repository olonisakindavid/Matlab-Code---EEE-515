x = linspace(0, 2*pi);
y1 = 2*cos(x);
y2 = cos(x);
y3 = 0.5*cos(x);

plot(x, y1, '-r', x, y2, '-g', x, y3, '-b');
legend('y1=2cos(x)', 'y2=cos(x)', 'y3=0.5cos(x)');
xlabel('x');
ylabel('y');
