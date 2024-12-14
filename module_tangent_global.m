% Degree of the polynomial fit
polynomial_order = 3;  % Choose based on the complexity of the data

% Number of points in the dataset
count = size(x, 2);

% Fit polynomials globally for y and z
p_y = polyfit(x, y, polynomial_order);  % Polynomial coefficients for y
p_z = polyfit(x, z, polynomial_order);  % Polynomial coefficients for z

% Compute the derivative coefficients
dp_y = polyder(p_y);  % Derivative coefficients for y
dp_z = polyder(p_z);  % Derivative coefficients for z

% Initialize arrays to store tangents (derivatives) at each point
tangent_y = zeros(1, count);
tangent_z = zeros(1, count);

% Evaluate the derivative polynomials at each point in x
for n = 1:count
    tangent_y(n) = polyval(dp_y, x(n));  % Derivative of y at x(n)
    tangent_z(n) = polyval(dp_z, x(n));  % Derivative of z at x(n)
end