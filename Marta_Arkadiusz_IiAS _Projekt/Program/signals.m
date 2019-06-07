clc
clear all
close all
t = [7:0.01:8];
A = [1 3]; %wektor amplitud
f = [10 80 120]; % wektor cz�stotliwo�ci
g = 40*pi/180; % przesuni�cie fazowe
x1 = 0;
%suma trzech funkcji sinusoidalnych
x1 = A(1)*sin(2*pi*f(1)*t +g) +  A(2)*sin(2*pi*f(2)*t +g) +  A(1)*sin(2*pi*f(3)*t +g);
%sygna� w postaci wielomianu
x2 = (t - 9) .* (t - 21) .* (t - 31) .* (t - 75) .* (t - 87);
%sygna� stochastyczny
x3 = rand(length(t));

figure, plot(t, x1, 'k'), axis off
figure, plot(t, x2, 'k'), axis off
figure, plot(t, x3(1,:),'k'), axis off