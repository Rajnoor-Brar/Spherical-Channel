
%

helix_rad=6;
helix_stretch=10;

x=0:1:50;

a=helix_rad*cos(1*x/helix_stretch-pi/4);
b=helix_rad*sin(1*x/helix_stretch-pi/4);

rad=(sin(pi*sin(x/8).^2)+ cos(3*pi/2*sin(x/7))+exp((x-5)/35)) + 1;

c=-1*helix_rad*cos(1.2*x/helix_stretch-pi/4);
d=-1*helix_rad*sin(1.1*x/helix_stretch-pi/4);

save("curve.txt","x","a","b","x","c","d","rad","-ascii");

