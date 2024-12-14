% Parameters
window_size = 5;    % Number of points in the fitting window
max_order = 3;      % Maximum degree of the polynomial fit
count = size(x, 2); % Total number of points

% Initialize tangent arrays for y and z
tangent_y = zeros(1, count);
tangent_z = zeros(1, count);

for n = 1:count
    % Determine the indices for the fitting window
    half_window = floor(window_size / 2);
    start_idx = max(1, n - half_window);
    end_idx = min(count, n + half_window);
    
    x_window = x(start_idx:end_idx);
    y_window = y(start_idx:end_idx);
    z_window = z(start_idx:end_idx);
    
    % Determine the polynomial order based on the window size
    current_order = min(max_order, length(x_window) - 1);
    
    % Fit a polynomial of appropriate order to the data in the window
    p_y = polyfit(x_window, y_window, current_order);
    p_z = polyfit(x_window, z_window, current_order);
    
    % Compute the derivative coefficients
    dp_y = polyder(p_y);
    dp_z = polyder(p_z);
    
    % Evaluate the derivative at the current point x(n)
    tangent_y(n) = polyval(dp_y, x(n));
    tangent_z(n) = polyval(dp_z, x(n));
end
