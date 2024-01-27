% Input sequence and window size
x = [1, -4, 3, 8, 2, 7, 3, 5, 1, 8];
N = 5;

% Get the length of the input sequence
L = length(x);

% Initialize an array to store the sliding DFT values for each time instant
num_time_instants = L - N + 1;
Xk_n_values = zeros(N, num_time_instants);

% Loop over all time instants
for n = N:L
    x_n = x(n - N + 1:n);
    
    % Calculate the sliding DFT for the current time instant
    Xk_n_values(:, n - N + 1) = fft(x_n);
end

% Display the results in a table
disp('Time Instant | Sliding DFT Values');
disp('--------------------------------');
for t = 1:num_time_instants
    disp([num2str(t), blanks(14 - length(num2str(t))), num2str(Xk_n_values(:, t).')]);
end
