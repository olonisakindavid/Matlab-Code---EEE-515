%exam question omo.. given an algorithm to follow
% lineBusData = [linebusnumber1 linebusnumber2 imp(real) imp(imaginary)]
% ; for suppression

%Y bus admittance
lineData = [1 2 0.1 0.4
            1 4 0.15 0.6
            1 5 0.05 0.2 
            2 3 0.05 0.2
            2 4 0.1 0.4
            3 5 0.05 0.2], %or i can use ; to seperate

A = lineData(:,1); %fetching vector column of the bus number ...use parenthesis
B = lineData(:,2); %fetching vector column of the bus number ...use parenthesis

Z_real = lineData(:,3); %fetching vector column of the resistance 
z_imag = lineData(:,4); %fetching vector column of the imaginary part
nl = length(A(:,1)); % get the length size or count of the branches
nbus = max(max(A),max(B)) %Get the maximum number of buses

Z= r + j*x ;
y = max(nl,1)./z;

Y_bus = Zeros(nl, nbus); %initializing Ybus to zero

for K = 1:nl; %we are trying to find all diagonal element information 
    Y_bus(A(k), B(k)) = Y_bus(A(k), B(k) - y(k)); 
    Y_bus[B(k)A(k) = Y_bus(A(k), B(k)];
    
for n = 1: nbus; %main diagonal element 
for k = 1:nl;
if A(k) == n;
    Y_bus(n,n) = Y_bus(n,n) + y(k);
else if E(k) ==n
        Y_bus(n,n) = Y_bus(n,n)+y(k);
    end
end
end

Y_bus
Z_bus = 1./Y_bus

  
