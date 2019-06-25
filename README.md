# Badanie stacjonarnosci sygnałów
Program pozwalający na badanie stacjonarności sygnałów / Program that determines whether a signal is stationary or not

# GUI programu
![image](https://user-images.githubusercontent.com/37414943/59108129-82f95e80-893a-11e9-8f91-51b55c90281b.png)

# Opis projektu
Program ten pozwala użytkownikowi na sprawdzenie, czy badany przez niego sygnał jest sygnałem stacjonarnym, definicja takiego sygnału została podana poniżej.Użyt-kownik ma możliwość prezentacji bądź przetestowania działania programu, wykorzy-stującpięć predefiniowanych sygnałów demonstracyjnych. Główną zaletą produktu, jest łatwy i przyjazny interfejs, który pozwala na zaimportowanie własnego sygnału, w celujego analizy. Program informuje użytkownika o stacjonarności poprzez wyko-rzystanie kontrolek. Dzięki wyświetleniu parametrów statystycznych w tabeli, użyt-kownik może samsprawdzić,dlaczego badany przez niegosygnał został sklasyfiko-wany w dany sposób.Program posiada również możliwość graficznego przedstawie-nia sygnału orazwyznaczonych fragmentów tego sygnału.

# Opis problemu
Procesem stacjonarnymnazywamy proces stochastyczny, dla którego rozkłady gęsto-ści prawdopodobieństwa zmiennej losowej X nie zmieniająsię wraz z przesunięciem w czasie lub przestrzeni. W efekcie parametry takie jak średnia i wariancja także nie ulegają zmianie.W celu określenia stacjonarności badanego sygnału wyznaczono jego parametrysta-tystyczne: wartość oczekiwana sygnału losowego, wartość skutecznasygnału losowego (RMS –Root Mean Square), wariancja sygnału losowego, odchylenie standardowe sygnału losowego, współczynnik asymetrii, skośność, współczynnik koncentracji, kurtoza

# Interfejs programu 
Interfejs zaprojektowano przy użyciu narzędzia AppDesigner, które pozwala na stworzenie GUI oraz zaprogramowanie elementów interfejsu aby wykonywały określone funkcje. nterfejs zaprojektowano przy użyciu narzędzia AppDesigner, które pozwala na stwo-rzenie GUI oraz zaprogramowanie elementów interfejsu aby wykonywały określone funkcje.

![image](https://user-images.githubusercontent.com/37414943/60102629-5927a080-975e-11e9-86a4-a9c166fc2665.png)

Powyżej przedstawiono stan interfejsu po uruchomieniu programu. Aktywne są jedy-nie te elementy interfejsu, które pozwalają na wybranie określenie typu sygnału oraz jego zaimportowanie. W rozwijanej zakładce Badany sygnał, użytkownik może wy-brać jeden z pięciu dostępnych sygnałów demonstracyjnych : Poliharmoniczny, Sinus, Stały, Wielomian oraz Stochastyczny. Domyślnie ustawiony jest sygnał Poliharmonicz-ny. Po wybraniu opcji w zakładce możliwe jest zaimportowanie sygnału poprzez przy-cisk Importuj sygnał.

![image](https://user-images.githubusercontent.com/37414943/60102572-3eedc280-975e-11e9-94c6-f5dc3eed5276.png)
Gdy sygnał zostanie zaimportowany program informuje o tym poprzez wyświetlenie komunikatu. 

![image](https://user-images.githubusercontent.com/37414943/60102680-752b4200-975e-11e9-97a1-552170edeadd.png)

Element GUI typu spinner pozwala na ustalenie wartości nakładkowania, zawiera się ona w przedziale od 0 do 0.99. Użytkownik może podać pożądaną wartość z klawiatu-ry, bądź użyć przycisków oznaczonych strzałkami w celu inkrementacji / dekrementa-cji tej wartości. Po kliknięciu przycisku Slice zaimportowany sygnał zostanie podzielo-ny na cztery fragmenty zgodnie z określoną wartością nakładkowania. 

![image](https://user-images.githubusercontent.com/37414943/60102709-85dbb800-975e-11e9-8854-07e533b6a521.png)
Poprzez zapalenie jednej z kontrolek pod wykresem użytkownik zostaje poinformowa-ny o stacjonarności badanego sygnału. Do analizy nie jest brany parametr skośność, jest on wyświetlany jedynie w celach informacyjnych.

Po zaimportowaniu sygnału można dokonać ponownego wyznaczenia parametrów dla nowej wartości nakładkowania wybranej przez użytkownika. Jeżeli użytkownik chce zaimportować inny sygnał, należy wybrać przycisk Reset. Wtedy możliwe będzie po-nowne wybranie programu przy użyciu rozwijanej zakładki Badany sygnał, a następ-nie zaimportować go poprzez wciśnięcie Importuj sygnał. 
Program posiada również możliwość zaimportowania przez użytkownika własnego sy-gnału określonego jako przestrzeń robocza Matlaba. Aby tego dokonać należy wybrać przycisk Sygnał własny, który uczyni rozwijaną zakładkę z sygnałami demonstracyj-nymi nieaktywną, natomiast kliknięcie przycisku Importuj sygnał spowoduje otwarcie się okna dialogowego, które pozwoli użytkownikowi na wybór dowolnego sygnału, zdefiniowanego jako plik o rozszerzeniu .mat. 

![image](https://user-images.githubusercontent.com/37414943/60102770-a1df5980-975e-11e9-9a33-5f66ffee41d8.png)

W przypadku, gdy użytkownik wybrałby plik o złym rozszerzeniu, wyświetlony zostaje komunikat, który o tym poinformuje.

![image](https://user-images.githubusercontent.com/37414943/60102815-b4f22980-975e-11e9-864c-e2c24b2461d6.png)

Kolejne działania są analogiczne do działań na sygnale demonstracyjnym.
Gdy użytkownik będzie chciał opuścić program, należy nacisnąć przycisk Wyjdź koń-czący działanie programu.


