clear all
clc
c1 = 0.5176;
c2 = 116;
c3 = 0.4;
c4 = 5;
c5 = 21;
c6 = 0.0068;
tip =[];
Cp=[];

u=0; %Pitch Angle

for i = 0.1:0.05:15
    
li = 1/((1/(i+0.08*u))-(0.035/(u^3+1)));
A = c1*((c2/li-c3*u-c4)*exp(-c5/li))+c6*i;
Cp2 = c1*((c2/li-c3*u-c4)*exp(-c5/li))+c6*i;
tip = [ tip i];
Cp = [ Cp Cp2];
[M I]= max(Cp);
tipmax=tip(I(1));
Cpmax=M(1);

end

