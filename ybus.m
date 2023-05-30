linedata = [1 2 0.1 0.4; 1 4 0.15 0.6; 1 5 0.05 0.2; 2 3 0.05 0.2; 2 4 0.1 0.4; 3 5 0.05 0.2];

f = linedata(:;1);
t = linedata(:;2);
r = linedata(:;3);
x = linedata(:;4);
nl = length(f(:;1));
nbus = max(max f(k), max t(k));

z = r + j*x
y = max(nl,1)./z
ybus = zeros(nl,nbus);

for k = 1:nl
    ybus(f(k),t(k)) = ybus(f(k), t(k)) - y(k) 
    ybus(f(k),t(k)) = ybus(t(k), f(k))
end

for n = 1:nbus
    for k = 1:nl
        if f(k) == n
            ybus(n,n) = ybus(n,n) + y(k);
        else if t(k) == n
                ybus(n,n) = ybus(n,n) + y(k);
            end
        end
    end
end
ybus


Save("fourteenbuslinedata", "linedata");
