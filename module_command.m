fname="Data\C10.txt";

impdata = load(fname,"~ascii");

roundness=0.01;                     % Lower value will make cylinder more round

showCrossSections = 1;
cross_density=15;                   % Higher Value will reduce number of cross-sections, must be a positive integer

showCoaxialLines = 0;
coax_density=int16(0.8/roundness);

showChannelShadows=0;
showAxis = 0;

x   = impdata(1,:);
y   = impdata(2,:);
z   = impdata(3,:);
rad   = impdata(4,:);


clear impdata;
