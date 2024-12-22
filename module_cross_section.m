
cyl_x=zeros(size(t'*x));
cyl_y=cyl_x;    cyl_z=cyl_x;

for n=1:size(x,2)
    norm_vec      = [1 tangent_y(n) tangent_z(n)];
    norm_vec      = norm_vec/norm(norm_vec);
    
    major_vec     = [0 -1*tangent_z(n) tangent_y(n)];
    %major_vec     = cross(norm_vec,[0 y(n) z(n)]); % cross prodcuct: norm_vec * [1 0 0]; give one among infinite vector perpendiculat to norm_vec
    major_vec     = major_vec/norm(major_vec);
    
    minor_vec     = cross(norm_vec,major_vec);
    minor_vec     = minor_vec/norm(minor_vec);
    
    point_vec     = rad(n)*((cos(t)' * major_vec) + (sin(t)' * minor_vec));

    cyl_x(1:end,n)= point_vec(1:end,1);
    cyl_y(1:end,n)= point_vec(1:end,2);
    cyl_z(1:end,n)= point_vec(1:end,3);
end

varcl={'norm_vec','major_vec','minor_vec','point_vec','n','varcl'};
clear (varcl{:});