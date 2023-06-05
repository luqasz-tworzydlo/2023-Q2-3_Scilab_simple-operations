// Łukasz Tworzydło, gd29623, INIS4_PR2.2

// zadania będą rozwiązane poprzez użycie programu SciLab: Graphics

// podniesienie limitu wyświetlania okien graficznych
atomsSetConfig("graphics", "maxwin", 25)
// domyślny maksymalny limit to 16/17 figur, powyższa komenda
// podnosi limit wyświetlania okien graficznych do 25 figur

// zad_1 [stworzenie wektorów W i S, utworzenie
// nowego okna graficznego (figure(i))]
W=[0.69 1.24 0.32 -2.8 -5.84 -2.81 10.88 27 18.55]
S=[0.4 0.8 1.6 2.1 2.8 3.3 3.5 3.8 4.5]
//disp(W) // testowanie
//disp(S) // testowanie
figure(1)

// zad_2 [narysowanie wykresów względem wektora W]
// zad_2_a [względem indeksów wektora]
subplot(2, 1, 1)
plot(W)
xtitle("(Zadanie nr 2a) Wektor W vs Indeksy", "Indeks", "Wartość");
// zad_2_b [względem elementów wektora S]
// zad_2_b_I [wykres narysowany linią ciągłą]
figure(2)
subplot(2, 1, 2)
plot(S, W)
xtitle("(Zadanie nr 2b I) W vs S", "S", "W")
// zad_2_b_II [punkty na wykresie zaznaczone kółkami]
figure(3)
subplot(2, 1, 2)
plot(S, W, 'o')
xtitle("(Zadanie nr 2b II) W vs S", "S", "W")

// zad_3 [narysowanie wykresu funkcji y=cos(t)e^sin(t)
// dla wartości t zmieniających się od 0 do 10 z krokiem 0.1]
figure(4)
t=0:0.1:10
y=cos(t).*exp(sin(t))
//clf() // zmienianie tła na białe
plot(t, y)
xtitle("(Zadanie nr 3) y = cos(t)e^sin(t)", "t", "y")

// zad_4 [dla x należącego do przedziału <0, 2𝜋>
// narysuj na jednym wykresie przebiegi funkcji
// a) sin x - czerwoną linią ciągłą
// b) sin^2 x - niebieską linią kreskowaną
// c) sin^3 x - czarną linią kropkowaną]
figure(5)
x = linspace(0, 2*%pi, 1000)
y1 = sin(x)
y2 = sin(x).^2
y3 = sin(x).^3
plot(x, y1, '-r', x, y2, '--b', x, y3, ':k')
title('(Zadanie nr 4) Wykres funkcji sin(x), sin(x)^2 i sin(x)^3')
xlabel('x')
ylabel('y')
legend('sin(x)', 'sin(x)^2', 'sin(x)^3')

// zad_5 [napisz skrypt rysujący wykres funkcji
// y=Ae^Bsint dla t należącego do przedziału <0,20>;
// wykonaj dwa wykresy: dla A=2, B=3 (czarną linią ciągłą)
// oraz dla A=1, B=-3 (niebieską linią kropkowaną);
// na wykresie umieść siatkę, podpisy pod osiami
// (oś x - t, oś y = y(t)), tytuł, legendę]
figure(6)
t = 0:0.01:20
A1 = 2, B1 = 3, A2 = 1, B2 = -3
y1 = A1*exp(B1*sin(t))
y2 = A2*exp(B2*sin(t))
plot(t, y1, 'k-', 'LineWidth', 2)
plot(t, y2, 'b:', 'LineWidth', 2)
title('(Zadanie nr 5) Funkcja y=Ae^Bsint dla t należącego do przedziału <0,20>')
xlabel('t')
ylabel('y(t)')
legend('A=2, B=3', 'A=1, B=-3')

// zad_6 [dla x należącego do przedziału < 0, 4𝜋 > narysuj
// zad_6_a [ wykresy funkcji cos x - 1 oraz z = sin ( 1/(x^2 + 1) ) ]
x = linspace(0, 4*%pi, 1000)
y = cos(x) - 1
z = sin(1./(x.^2 + 1))
figure(7)
plot(x, y)
xtitle('(Zadanie nr 6a I) cos(x) - 1', 'x', 'y')
figure(8)
plot(x, z);
xtitle('(Zadanie nr 6a II) sin(1/(x^2 + 1))', 'x', 'y')
// zad_6_b [ wykresy obu funkcji na jednym rysunku ]
figure(9)
plot(x, y, 'r')
plot(x, z, 'b')
xtitle('(Zadanie nr 6b) cos(x) - 1 oraz sin(1/(x^2 + 1))', 'x', 'y')
legend('cos(x) - 1', 'sin(1/(x^2 + 1))')

// zad_7 [narysuj wykres funkcji z = cos(x) sin(x), gdzie
// x - to wektor o wartościach od -10 do 10, y = sin(x) ]
x = linspace(-10, 10, 1000)
y = sin(x);
z = cos(x).*sin(x);
figure(10)
plot(x, y, 'r')
plot(x, z, 'b')
xtitle('(Zadanie nr 7) y = sin(x) oraz z = cos(x) sin(x)', 'x', 'y')
legend('y = sin(x)', 'z = cos(x) sin(x)')

// zad_8 [narysuj wykres powierzchni opisanej
// funkcją f(x,y) = (x - y) (x + y) * e√(x^2 + y^2)
// dla x, y należącego do przedziału < -5, 5 > ]
x = linspace(-5, 5, 100)
y = linspace(-5, 5, 100)
[X, Y] = meshgrid(x, y)
Z = (X - Y).*(X + Y).*exp(sqrt(X.^2 + Y.^2))
figure(11)
surf(X, Y, Z)
xtitle('(Zadanie nr 8) Wykres powierzchni opisanej funkcją f(x,y) = (x - y)(x + y) * e^(sqrt(x^2 + y^2))', 'x', 'y', 'z')
//clc, clear // wyczyszczenie konsoli i jakichkolwiek zmiennych [testowanie]

// zad_9 [narysuj w oddzielnych oknach wykresy
// funkcji f(x,y) = sin(x) cos (y) , gdzie
// x,y należy do przedziału < -𝜋, 2𝜋 > ; skorzystaj
// kolejno z poleceń mesh, plot3d, contour]
x = linspace(-%pi, 2*%pi, 100)
y = linspace(-%pi, 2*%pi, 100)
[X, Y] = meshgrid(x, y)
Z = sin(X).*cos(Y)
figure(12)
mesh(X, Y, Z)
xtitle('(Zadanie nr 9.1) Polecenie mesh f(x,y) = sin(x) cos(y)', 'x', 'y', 'z')
figure(13)
plot3d(X, Y, Z)
xtitle('(Zadanie nr 9.2) Polecenie plot3d f(x,y) = sin(x) cos(y)', 'x', 'y', 'z')
figure(14)
contour(x, y, Z, 20)
xtitle('(Zadanie nr 9.3) Polecenie contour f(x,y) = sin(x) cos(y)', 'x', 'y')

// zad_10 [napisz skrypt, który rysuje wykresy funkcji
// f(x,y) = e^(-(x-1)^2 - y^2) + e^(-(x+1)^2 - y^2)
// dla x,y należącego do przedziału < -3, 3 >
// w jednym oknie graficznym (subplot), kolejno
// za pomocą poleceń mesh, surf i plot3d]
function z = f(x, y)
    z = exp(-(x - 1)^2 - y^2) + exp(-(x + 1)^2 - y^2)
endfunction
x = linspace(-3, 3, 100)
y = linspace(-3, 3, 100)
[X, Y] = meshgrid(x, y)
Z = f(X, Y)
figure(15)
subplot(1, 3, 1)
mesh(X, Y, Z)
//xtitle('Polecenie (funkcja) mesh')
subplot(1, 3, 2)
surf(X, Y, Z)
//xtitle('Polecenie (funkcja) surf')
title('(Zadanie nr 10) Polecenia (funkcje) mesh [lewa], surf [środek] oraz plot3d [prawa]')
subplot(1, 3, 3)
plot3d(X, Y, Z)
//xtitle('Polecenie (funkcja) plot3d')

// zad_11 [napisz skrypt, który rysuje wykresy funkcji
// f(x,y) = e^(cos(x)) e^(cos(y)) dla x,y, które należą
// do przedziału < -𝜋, 𝜋 > w tym samym oknie graficznym
// (subplot), za pomocą funkcji plot3d + contour i mesh]
function z = f(x, y)
    z = exp(cos(x)) .* exp(cos(y))
endfunction
x = linspace(-%pi, %pi, 100)
y = linspace(-%pi, %pi, 100)
[X, Y] = meshgrid(x, y)
Z = f(X, Y)
figure(16)
subplot(1, 3, 1)
plot3d(X, Y, Z)
//title('Polecenie (funkcja) plot3d')
subplot(2, 3, 2)
contour(x, y, Z, 20)
title('(Zadanie nr 11) Polecenia (funkcje) plot3d [lewa], contour [środek] oraz mesh [prawa]')
//title('Polecenie (funkcja) contour')
subplot(1, 3, 3)
mesh(X, Y, Z)
//title('Polecenie (funkcja) mesh')

// zad_12 [przyjmując dane: x=[0 1 2 3 4 5 6],
// y=[0 0.95 3.9 9.4 15.2 22.3 37.1]:
// wykonaj punkty a,b,c,d oraz e ]
x = [0 1 2 3 4 5 6]
y = [0 0.95 3.9 9.4 15.2 22.3 37.1]
// zad_12_a) [ narysuj wykres y(x) oznaczając punkty kółkami ]
// zad_12_b) [ oblicz wartość 𝑦2(𝑥) = 𝑥2 i na tym samym
// wykresie oznacz punkty na wykresie kwadracikami,
// łącząc je jednocześnie linią ciągłą ]
// zad_12_c) [ zakres na osi x ustaw od 0 do 6,
// a na osi y – od 0 do 40 ]
// zad_12_d) [ dodaj opisy osi: ‘oś x’ i ‘oś y’,
// tytuł: ‘Porównanie’ oraz legendę,
// określając pierwszy wykres jako
// ‘pomiary’, a drugi jako: ’obliczenia’ ]
// zad_12_e) [ narysuj siatkę ]
figure(17)
clf()
plot(x, y, "o") // 12_a)
xlabel('oś x') // 12_d)
ylabel('oś y') // 12_d)
title("(Zadanie nr 12) Porównanie") // 12_d)
legend("pomiary") // 12_d)
x2 = [x] // 12_b)
y2 = [x.^2] // 12_b)
plot(x2, y2, "+") // 12_b)
plot(x2, y2, 'LineWidth', 2) // 12_b)
legend("pomiary", "obliczenia") // 12_d)
plot(x, y, "o")
axis([0 6 0 40]) // 12_c)
grid() // 12_e)

// zad_13 [oblicz wartości macierzy dla z(x,y) = (x - 5)^2 - (y - 5)^2
// dla x,y = 1,2, ... ,10; narysuj i porównaj wykresy funkcji z:
function z = z_func(x, y)
    z = (x - 5)^2 - (y - 5)^2
endfunction
x = 1:10
y = 1:10
[X, Y] = meshgrid(x, y)
Z = z_func(X, Y)
// zad_13_a) poziomicowe – contour
figure(18)
contour(x, y, Z, 20)
title("(Zadanie nr 13_a) poziomicowe - contour")
// zad_13_b) powierzchniowe – surf, mesh, plot3d
figure(19)
surf(x, y, Z)
mesh(x, y, Z)
plot3d(x, y, Z)
title("(Zadanie nr 13_b) powierzchniowe – surf, mesh, plot3d")
figure(20)
surf(x, y, Z)
plot3d(x, y, Z)
title("(Zadanie nr 13_b) [dod.1] powierzchniowe – surf, plot3d")
figure(21)
mesh(x, y, Z)
plot3d(x, y, Z)
title("(Zadanie nr 13_b) [dod.2] powierzchniowe – mesh, plot3d")
figure(22)
surf(x, y, Z)
title("(Zadanie nr 13_c) [dod.3] powierzchniowe – surf")
figure(23)
mesh(x, y, Z)
title("(Zadanie nr 13_b) [dod.4] powierzchniowe – mesh")
figure(24)
plot3d(x, y, Z)
title("(Zadanie nr 13_b) [dod.5] powierzchniowe – plot3d")

// zad_14 [za pomocą komendy surf narysuj wykres funkcji
// z(x,y) = (x - y) (x + y) + e√(x^2 + y^2) w przedziale
// x,y należącego do przedziału < -5, 5 >; dodaj siatkę
// i na obu osiach ustaw zakres od -5 do 5]
function z = z_func(x, y)
    z = (x - y) * (x + y) + exp(sqrt(x^2 + y^2))
endfunction
// powyżej jest zdefiniowana funkcja z(x,y)
x = linspace(-5, 5, 50) // zdefiniowanie zakresu wartości x
y = linspace(-5, 5, 50) // zdefiniowanie zakresu wartości y
[X, Y] = meshgrid(x, y) // utworzenie siatki wartości x,y
Z = z_func(X, Y) // oblicz wartości z dla każdego x i y
figure(25) // utworzenie nowego okna graficznego
title("(Zadanie nr 14) Wykres funkcji z(x,y)") // opis
surf(X, Y, Z) // utworzenie wykresu powierzchni
xlim(-5, 5) // ustawienie zakresu dla x
ylim(-5, 5) // ustawienie zakresu dla y
grid() // utworzenie siatki

/*  => Imię i nazwisko: Łukasz Tworzydło
    => Numer albumu: gd29623
    => Nr. kierunku: INIS4_PR2.2

    *** Scrilab 6.1.1
    *** www.scilab.org*/
