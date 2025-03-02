function Hd = BandpassFilter
%BANDPASSFILTER Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 24.2 and Signal Processing Toolbox 24.2.
% Generated on: 29-Dec-2024 18:10:27

% Equiripple Bandpass filter designed using the FIRPM function.

% All frequency values are in Hz.
Fs = 48000;  % Sampling Frequency

N      = 100;   % Order
Fstop1 = 2000;  % First Stopband Frequency
Fpass1 = 3000;  % First Passband Frequency
Fpass2 = 7000;  % Second Passband Frequency
Fstop2 = 8000;  % Second Stopband Frequency
Wstop1 = 40;    % First Stopband Weight
Wpass  = 0.1;   % Passband Weight
Wstop2 = 40;    % Second Stopband Weight
dens   = 20;    % Density Factor

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 ...
           0], [Wstop1 Wpass Wstop2], {dens});
Hd = dfilt.dffir(b);

% [EOF]
