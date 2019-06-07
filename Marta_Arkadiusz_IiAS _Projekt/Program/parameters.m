function sig_properties = parameters(signal)
[m ,l] = size(signal);
if (m >1 && l >1)
error('Badany sygna� musi zosta� podany w postaci jednowymiarowego wektora')
end
sig_properties.expected_value = mean(signal); % warto�� oczekiwana / �rednia
sig_properties.root_mean_square = rms(signal); % �rednia kwadratowa / warto�� skuteczna
sig_properties.standard_deviation = std(signal); % odchylenie standardowy
sig_properties.variance = var(signal); % wariancja
sig_properties.skewness = skewness(signal); % sko�no��
sig_properties.kurtosis = kurtosis(signal); % kurtoza
end
