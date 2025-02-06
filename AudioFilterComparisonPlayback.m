% Load the MP3 file
[audioData, fs] = audioread('my_audio.mp3'); % 'fs' is the sampling frequency

% Original audio
disp('Playing original audio...');
sound(audioData, fs); % Play the original audio
pause(length(audioData) / fs); % Wait for the audio to finish

% Lowpass Filter - Variation 1
disp('Lowpass filter (variation 1) applied and playing...');
lowpass_filter1 = LowpassFilter(); % Load the first lowpass filter
filtered_audio_lowpass1 = filter(lowpass_filter1, audioData); % Apply the filter
sound(filtered_audio_lowpass1, fs); % Play the filtered audio
pause(length(filtered_audio_lowpass1) / fs); % Wait for the audio to finish

% Lowpass Filter - Variation 2
disp('Lowpass filter (variation 2) applied and playing...');
lowpass_filter2 = LowpassFilter2(); % Load the second lowpass filter
filtered_audio_lowpass2 = filter(lowpass_filter2, audioData); % Apply the filter
sound(filtered_audio_lowpass2, fs); % Play the filtered audio
pause(length(filtered_audio_lowpass2) / fs); % Wait for the audio to finish

% Highpass Filter - Variation 1
disp('Highpass filter (variation 1) applied and playing...');
highpass_filter1 = HighpassFilter(); % Load the first highpass filter
filtered_audio_highpass1 = filter(highpass_filter1, audioData); % Apply the filter
sound(filtered_audio_highpass1, fs); % Play the filtered audio
pause(length(filtered_audio_highpass1) / fs); % Wait for the audio to finish

% Highpass Filter - Variation 2
disp('Highpass filter (variation 2) applied and playing...');
highpass_filter2 = HighpassFilter2(); % Load the second highpass filter
filtered_audio_highpass2 = filter(highpass_filter2, audioData); % Apply the filter
sound(filtered_audio_highpass2, fs); % Play the filtered audio
pause(length(filtered_audio_highpass2) / fs); % Wait for the audio to finish

% Bandstop Filter - Variation 1
disp('Bandstop filter (variation 1) applied and playing...');
bandstop_filter1 = BandstopFilter(); % Load the first bandstop filter
filtered_audio_bandstop1 = filter(bandstop_filter1, audioData); % Apply the filter
sound(filtered_audio_bandstop1, fs); % Play the filtered audio
pause(length(filtered_audio_bandstop1) / fs); % Wait for the audio to finish

% Bandstop Filter - Variation 2
disp('Bandstop filter (variation 2) applied and playing...');
bandstop_filter2 = BandstopFilter2(); % Load the second bandstop filter
filtered_audio_bandstop2 = filter(bandstop_filter2, audioData); % Apply the filter
sound(filtered_audio_bandstop2, fs); % Play the filtered audio
pause(length(filtered_audio_bandstop2) / fs); % Wait for the audio to finish

% Bandpass Filter - Variation 1
disp('Bandpass filter (variation 1) applied and playing...');
bandpass_filter1 = BandpassFilter(); % Load the first bandpass filter
filtered_audio_bandpass1 = filter(bandpass_filter1, audioData); % Apply the filter
sound(filtered_audio_bandpass1, fs); % Play the filtered audio
pause(length(filtered_audio_bandpass1) / fs); % Wait for the audio to finish

% Bandpass Filter - Variation 2
disp('Bandpass filter (variation 2) applied and playing...');
bandpass_filter2 = BandpassFilter2(); % Load the second bandpass filter
filtered_audio_bandpass2 = filter(bandpass_filter2, audioData); % Apply the filter
sound(filtered_audio_bandpass2, fs); % Play the filtered audio
pause(length(filtered_audio_bandpass2) / fs); % Wait for the audio to finish
