%IMPORTANT!
Ea = 1+0j;
Z1 = 0.25j;
Z2 = 0.35j;
Z0 = 0.1j;
%Assuming that fault occurs at phase 'a', the positive sequence component of
%current in the 'a' phase (for a singular line to ground fault without
%impedance
Ia1= (Ea/(Z1+Z2+Z0));
%Also, for a single line to groun fault, Ia1=Ia2=Ia0
Ia2=Ia1;
Ia0=Ia1;
%Also, Fault current in phase 'a', Ia=Ia1+Ia2+Ia0
Ia = Ia1 + Ia2 + Ia0;
%From the positive sequence network
Va1= Ea-(Ia1*Z1);
%From negative sequence network
Va2 = -Ia2*Z2;
%From the zero sequence network
Va0 = -Ia0*Z0;
%For operator 'a' i.e an operator which causes a rotation of 120 degrees in
%the anti-clockwise direction.
a = pol2cart(1,((pi/180)*120));
%If Va1, Vb1 and Vc1 are the positive sequence component of the unbalanced
%voltages,
Vb1 = a^2*Va1;
%If Va2, Vb2 and Vc2 are the negative sequence component of the unbalanced
%voltages,
Vb2 = a*Va2;
%If Va0, Vb0 and Vc0 are the positive sequence component of the unbalanced
%voltages,
Vb0=Va0;
Vc0=Va0;
Vc1=a*Va1;
Vc2=a^2*Va2;
Vb=Vb1+Vb2+Vb0;
Vc=Vc1+Vc2+Vc0;
Va=0;
Vab = Va-Vb;
Vab_mag=abs(Vab)