function [out]=scheme_2(t,y,flag,k)
A=y(1);
B=y(2);
C=y(3);
D=y(4);
E=y(5);
F=y(6);
G=y(7);
H=y(8);


switch flag
    case ''
out=[A*B*-k(1)+C*k(2)+G*k(6);
    A*B*-k(1)+C*k(2);
    A*B*k(1)+C*(-k(2)-k(3))+D*k(4);
    C*k(3)+D*(-k(4)-k(5));
    D*k(5)+E*(-k(9)-k(10));
    E*k(9);
    G*-k(6);
    E*k(10);];
    
    case 'jacobian'
        out=[B*-k(1)	A*-k(1)	k(2)	0	0	0	k(6)	0
B*-k(1)	A*-k(1)	k(2)	0	0	0	0	0
B*k(1)	A*k(1)	-k(2)-k(3)	k(4)	0	0	0	0
0	0	k(3)	-k(4)-k(5)	0	0	0	0
0	0	0	k(5)	-k(9)-k(10)	0	0	0
0	0	0	0	k(9)	0	0	0
0	0	0	0	0	0	-k(6)	0
0	0	0	0	k(10)	0	0	0];
end
end