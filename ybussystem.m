%Ybus admittance matrix

Linedata = [1 2 0.1 0.4; 1 4 0.15 0.6; 1 5 0.05 0.2; 2 3 0.05 0.2; 2 4 0.1 0.4; 3 5 0.05 0.2]; % storing the data

f = Linedata(:,1);
t = Linedata(:,2);
r = Linedata(:,3);
x = Linedata(:,4);

nl = length(f(:,1)); %length of branches
nbus = max(max(f),max(t)) %length of bus

z = r + j*x; %impedance
y  = max(nl,1)./z; % admittance

ybus = zeros(nl,nbus); %initializing ybus ---0


for k = 1:nl %off diagonal element
    ybus(f(k),t(k)) = ybus(f(k),t(k)) - y(k);
    ybus(t(k), f(k)) = ybus(f(k), t(k));
end

for n = 1:nbus %diagonal element
    for k = 1:nl
        if f(k) == n
            ybus(n,n) = ybus(n,n) + y(k);
        else t(k) == n
            ybus(n,n) = ybus(n,n) + y(k);
        end
    end
end
disp("Ybus is oses friend")
ybus
        


            
           
        
         
    








