% 11th october, 2022
%the volume of a circular cylinder of height "h" and radius "r" is given by
%%v =pi * r^2 * h, a particular cylinderical tank is 15m tall and a radius
%%of 8m . we want to construct another cylinderical tank with volume
%%20percent greater and having the same height. how large must the radius
%%be

%CYLINDER 1
h = 15;
r = 8;

volume_1 = pi * r^2 * h

%CYLINDER 2
volume_increase = (volume_1 * 0.2)+(volume_1) 
r_new = sqrt(volume_increase/(pi*h)) + "m"
