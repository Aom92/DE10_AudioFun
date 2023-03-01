%Encuentra los coeficientes de un filtro FIR, a partir de la respuesta al
%impulso dada
% Tomado a partir de codigo generado por ChatGPT.

% Step 1: Determine the desired frequency response of the filter
f = [0 0.1 0.2 1];     % frequency bands
a = [1 1 0 0];         % desired amplitude in each band

% Step 2: Design an ideal filter with the desired frequency response using the Fourier transform
N = 512;                % number of frequency points
%h = fir2(N-1, f, a);    % ideal impulse response 
%(?) y cambiamos esto por la respusta al impulso que nos interesa

[h, Fs] = audioread("r1_ortf.wav");    % Room Impulse Response.

% Step 3: Convert the ideal filter to a causal FIR filter by applying the inverse Fourier transform
b = ifft(h);

% Step 4: Truncate the filter coefficients to a finite length
M = 64;                 % number of filter coefficients
b = b(1:M);

% Step 5: Apply windowing to improve the filter performance
w = hamming(M);         % Hamming window
b = b .* w;

% Normalize the filter coefficients
b = b / sum(b);

% Plot the frequency response
freqz(b, 1);


%Guardamos los coeficientes como un archivo listo para leerse en Quartus
%FIR II Builder.

file = fopen('FIR_COEFF','w'); %Abrimos archivo
fprintf(file, '# banks: 1\n');
fprintf(file, '# coeffs: %d\n', M);
for i = 0 : M-1
    fprintf(file, '%f,', (b(i+1)));
end
    


