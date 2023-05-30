%Program to compute Ybus admittance
linedata =[1 2 0.04 0.16 0.15; 1 4 0.02 0.08 0.07; 2 4 0.05 0.12 0.08; 2 3 0.015 0.06 0.02];
f = linedata(:,1); %Vector column of the bus number
t = linedata(:,2); % Vector column of bus number
r = linedata(:,3); % Vector column of resistance number
x = linedata(:,4); % Vector column of reactance number 
g = linedata(:,5); % Vector column of reactance number (linecharge)
nl = length(f(:,1)) % Number of the line or branches
nbus = max(max(f), max(t)) % Number of buses
Z = r + j*x + 0.5*g; % Branch impedance
y = max(nl,1)./Z ; % Branh admittance
ybus = zeros(nl,nbus); %Initailizing ybus to zero
for k = 1:nl ;  %Off diagonal element formation
    ybus(f(k),t(k)) = ybus(f(k),t(k))- y(k);
    ybus(t(k), f(k))= ybus(f(k), t(k));
end%Program to compute Ybus admittance
linedata =[1 2 0.04 0.16 0.15; 1 4 0.02 0.08 0.07; 2 4 0.05 0.12 0.08; 2 3 0.015 0.06 0.02];
f = linedata(:,1); %Vector column of the bus number
t = linedata(:,2); % Vector column of bus number
r = linedata(:,3); % Vector column of resistance number
x = linedata(:,4); % Vector column of reactance number 
g = linedata(:,5); % Vector column of reactance number (linecharge)
nl = length(f(:,1)) % Number of the line or branches
nbus = max(max(f), max(t)) % Number of buses
Z = r + j*x + 0.5*g; % Branch impedance
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