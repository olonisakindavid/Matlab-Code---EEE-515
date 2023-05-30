
%% SECTION TITLE
% *STUDENT DETAILS*
% *NAME: AJANI MOFIYINFOLUWA
% MATRIC NUMBER: 18K024179
% PROGRAME: ELECTRICAL & ELECTRONICS ENGINEERING
% DEPARTMENT: ELECTRICAL & INFORMATION ENGINEERING
% COURSE: EEE515*


%% SECTION TITLE
% MATLAB CODE TO CALCULATE THE LINE VOLTAGES Vbc AND Vca

Ea=1 + 0i; 
Z1= 0.25i; Z2=0.35i; Z0=0.1i; 
% Assuming the fault occurs at phase'a', the positive sequence component of 
% current in the 'a' phase(for a single line to ground fault without 
% impedance) 
Ia1=(Ea/(Z1+Z2+Z0)); 
%Also,for a single line to ground fault,Ia1=Ia2=Ia0 
Ia2=Ia1; 
Ia0=Ia1; 
%Als, fault current in phase 'a',Ia=Ia1+Ia2+Ia0 
Ia=3*(Ia1); 
%From the positive sequence network  
Va1=Ea-(Ia1*Z1); 
%From the negative sequence network  
Va2=-Ia2*Z2; 
%From the zero sequence network 
Va0=-Ia0*Z0; 
%For operator 'a' i.e. an operator which causes a rotation of 120 degrees 
%in the anticlockwise direction. 
a=pol2cart(1,((pi/180)*120)); 
%If Va1,Vb1 and Vc1 are the positive sequence component of the unbalanced 
%voltages, 
Vb1=a^2*Va1; 
%If Va2,Vb2 and Vc2 are the negative sequence component of the unbalanced 
%voltages 
Vb2=a*Va2; 
%If Va0,Vb0 and Vc0 are the negative sequence component of the unbalanced 

%voltages 
Vb0=Va0; 
Vc0=Va0; 
Vc1=a* Va1; 
Vc2=a^2*Va2; 
Vb=Vb1+Vb2+Vb0; 
Vc= Vc1+ Vc2+Vc0; 
Va=0; 

% P.U values
%put values of line voltages'
Vab=Va-Vb; 
Vab_mag = abs(Vab);

Vca=Vc-Va; 
Vca_mag = abs(Vca);

Vbc=Vb-Vc; 
Vbc_mag = abs(Vbc);

%assuming a base voltage value of 22kv...V_pu = (V_actual/V_base)

% Actual values
%actual values of line voltages
V_base = 22000;

Vab_actual = V_base * Vab_mag

Vbc_actual = V_base * Vbc_mag

Vca_actual = V_base * Vca_mag