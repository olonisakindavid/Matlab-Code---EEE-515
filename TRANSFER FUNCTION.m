%PROGRAM TO COMPUTE TF
a = [-1, -1; 2, -2 ];
b = [1; 0];
c = [0 1];
d = [0];
sys= ss(a,b,c,d)

ss_2_tf = tf(sys);