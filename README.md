# Badanie stacjonarnosci sygnalów
Program pozwalający na badanie stacjonarności sygnałów / Program that determines whether a signal is stationary or not

# GUI programu
![image](https://user-images.githubusercontent.com/37414943/59108129-82f95e80-893a-11e9-8f91-51b55c90281b.png)

# Opis projektu
Program ten pozwala użytkownikowi na sprawdzenie, czy badany przez niego sygnał jest sygnałem stacjonarnym, definicja takiego sygnału została podana poniżej.Użyt-kownik ma możliwość prezentacji bądź przetestowania działania programu, wykorzy-stującpięć predefiniowanych sygnałów demonstracyjnych. Główną zaletą produktu, jest łatwy i przyjazny interfejs, który pozwala na zaimportowanie własnego sygnału, w celujego analizy. Program informuje użytkownika o stacjonarności poprzez wyko-rzystanie kontrolek. Dzięki wyświetleniu parametrów statystycznych w tabeli, użyt-kownik może samsprawdzić,dlaczego badany przez niegosygnał został sklasyfiko-wany w dany sposób.Program posiada również możliwość graficznego przedstawie-nia sygnału orazwyznaczonych fragmentów tego sygnału.

# Opis problemu
Procesem stacjonarnymnazywamy proces stochastyczny, dla którego rozkłady gęsto-ści prawdopodobieństwa zmiennej losowej X nie zmieniająsię wraz z przesunięciem w czasie lub przestrzeni. W efekcie parametry takie jak średnia i wariancja także nie ulegają zmianie.W celu określenia stacjonarności badanego sygnału wyznaczono jego parametrysta-tystyczne: -Wartość oczekiwana sygnału losowego퐸[푋(푡)]=lim푇→∞1푇∫푋(푡)푑푡푡0+푇푡0-Wartość skutecznasygnału losowego (RMS –Root Mean Square)푋푅푀푆=√퐸[푋2(푡)]-Wariancja sygnału losowego휇2(푋(푡))=퐸[(푋̅−퐸[푋(푡)])2]−Odchylenie standardowe sygnału losowego휎(푋(푡))=√휇(푋(푡))-Współczynnik asymetrii, skośność훾=휇3휎3
-Współczynnik koncentracji, kurtoza휅=휇4휎4
