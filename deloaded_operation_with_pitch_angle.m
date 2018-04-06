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
    
Cp2=powercoefficient(i,u);
tip = [ tip i];
Cp = [ Cp Cp2];
[M I]= max(Cp);
tipmax=tip(I(1));
Cpmax=M(1);

end

% What we are looking for is 0.9*Cpmax

for u=0.01:0.01:10
    A=powercoefficient(tipmax,u);
    if (Cpmax*0.9>A)
        pitchreserve=u
        break
    end    
   
end