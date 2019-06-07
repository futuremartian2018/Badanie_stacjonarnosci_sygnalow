clc
clear all
close all

%% UTWORZENIE SYGNA£U  POLIHARMONICZNEGO
A = [1 3]; %wektor amplitud
f = [10 80 120]; % wektor czêstotliwoœci
g = 40*pi/180; % przesuniêcie fazowe
x = 0;
t = [0:0.0001:400]; % wektor czasu
%suma trzech funkcji sinusoidalnych

% x = t.*(t-10).*(t-5).*(t-7.5).*(t - 2.5);

 x = A(1)*sin(2*pi*f(1)*t) + A(2)*sin(2*pi*f(2)*t +g) +  A(1)*sin(2*pi*f(3)*t +g);
%  x = 4 + 0*t;
% x = 4*(t-1).*(t - 1.1).*(t - 0.3).*(t - 0.15).*(t - 2.5).*(t - 2.8);
% ra=rand(length(t));
% x = ra(1,:);
figure('Name','SYGNA£ POLIHARMONICZNY','NumberTitle','off') 
plot(t,x), title('SYGNA£ POLIHARMONICZNY')
xlabel('Czas [s]')
ylabel('Amplituda')
% 
% 
%% WYZNACZENIE PARAMETRÓW STATYSTYCZNYCH SYGNA£U
m_sig = parameters(x);

%% PODZIA£ SYGNA£U Z WYKORZYSTANIEM NAK£ADKOWANIA
slice_num = 4; % liczba podzia³ów sygna³u
onlay = 0.0;  % nak³adkowanie
sub_sigs = slice(x, slice_num, onlay);
sub_t = slice(t, slice_num, onlay);
% 
%% WYŒWIETLENIE FRAGMENTÓW SYGNA£U
figure('Name','FRAGMENT NR-1','NumberTitle','off') 
plot(sub_t(1,:),sub_sigs(1,:)), title('FRAGMENT NR-1')
xlabel('Czas [s]')
ylabel('Amplituda')

figure('Name','FRAGMENT NR-2','NumberTitle','off') 
plot(sub_t(2,:),sub_sigs(2,:)), title('FRAGMENT NR-2')
xlabel('Czas [s]')
ylabel('Amplituda')

figure('Name','FRAGMENT NR-3','NumberTitle','off') 
plot(sub_t(3,:),sub_sigs(3,:)), title('FRAGMENT NR-3')
xlabel('Czas [s]')
ylabel('Amplituda')

figure('Name','FRAGMENT NR-4','NumberTitle','off') 
plot(sub_t(4,:),sub_sigs(4,:)), title('FRAGMENT NR-4')
xlabel('Czas [s]')
ylabel('Amplituda')

%% SPRAWDZENIE STACJONARNOŒCI SYGNA£U
stational = determine(x, sub_sigs, 0.05, slice_num);
if(stational == true)
    disp('Badany sygna³ jest stacjonarny')
else 
    disp('Badany sygna³ nie jest stacjonarny')
end
