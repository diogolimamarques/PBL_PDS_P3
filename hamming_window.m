% Quantidade de amostras da janela, arredondando a mesma para um número par
% se necessário
N = 20;
N = round_even(N);

% Definido os intervalos de cada amostra
[n, M] = window_interval(N);

% Equação da Janela de Hamming
window = (0.54 + 0.46*cos((2*pi*n)/N))';

% Plot da janela de Hamming
stem(n, window, '.');
grid;