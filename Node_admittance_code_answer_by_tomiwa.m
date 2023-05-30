%Program to compute Ybus admittance
linedata=[1 2 0.1 0.4; 1 4 0.15 0.6; 1 5 0.05 0.2; 2 3 0.05 0.2; 2 4 0.1 0.4; 3 5 0.05 0.2];
f = linedata(:,1); %Vector column of the bus number
t = linedata(:,2); % Vector column of bus number
r = linedata(:,3); % Vector column of resistance number
x = linedata(:,4); % Vector column of reactance number 
nl = length(f(:,1)) % Number of the line or branches
nbus = max(max(f), max(t)) % Number of busesx
Z = r + j*x ; % Branch impedance
y = max(nl,1)./Z ; % Branh admittance
ybus = zeros(nl,nbus); %Initailizing ybus to zero
for k = 1:nl ;  %Off diagonal element formation
    ybus(f(k),t(k)) = ybus(f(k),t(k))- y(k);
    ybus(t(k), f(k))= ybus(f(k), t(k));
end
for n = 1:nbus  % Formation of main diagonal element
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