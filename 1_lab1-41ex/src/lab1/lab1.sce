// Łukasz Tworzydło, gd29623, INIS4_PR2.2

// zad_1 [utworzenie zmiennej x, sprawdzenie jej wartości i obliczenie pierwiastka]
x=2
disp(x)
x=sqrt(x)
disp(x)

// zad_2 [utworzenie zmiennych konkretnych dla a, b oraz c]
a=-0.002
b=20.0341 * 10^-12
c=%i+3*%i
//disp(a) // testowanie
//disp(b) // testowanie
//disp(c) // testowanie


// zad_3 [przypisanie zmiennej x wartości 4 bez zwracania wyniku obliczeń]
x=4
//disp(x) // testowanie

// zad_4 [przypisz zmiennej obecny_wynik wartość poprzedni_wynik+a[1-b+c(3d-1)]]
poprzedni_wynik=1
d=4
obecny_wynik = poprzedni_wynik+a*[1-b+c*(3*d-1)]
//disp(obecny_wynik) // testowanie

// zad_5 [zapisz w jednym wierszu trzy polecenia]
x=1, y=2, z=3
//disp(x) // testowanie
//disp(y) // testowanie
//disp(z) // testowanie

// zad_6 [wyświetl informację na temat funkcji sqrt]
help sqrt

// zad_7 [zdefiniuj macierz A]
A=[0 2 -10; 7 6 1]
//disp(A) // testowanie

// zad_8 [zdefiniuj wektor wierszowy B]
B=[1 0 -2 3]
//disp(B) // testowanie

// zad_9 [zdefiniuj wektor kolumnowy C]
C=[3; 2; 5]
//disp(C) // testowanie

// zad_10 [z danej macierzy A oraz wektorów B i C utwórz macierz D]
A=[3 -1; 5 0], B=[2 5 8], C=[7; 6]
D=[B; C A]
//disp(A,B,C) // testowanie
disp(D)

// zad_11 [wygeneruj wektor x=[1 2 3 4]]
x=1:4
disp(x)

// zad_12 [wygeneruj wektor x=[-1 -0.8 -0.6 -0.4 -0.2 0 0.2 0.4 0.6 0.8 1 ]]
x=-1:0.2:1
disp(x)

// zad_13 [wygeneruj macierz A]
A=[1:10; 1:2:20]
disp(A)

// zad_14 [przypisz zmiennej x wartość z 1 wiersza i 5 kolumny macierzy A]
// 14.1 [sposób nr 1]
x=A(1, 5)
//disp(x) // testowanie
// 14.2 [sposób nr 2]
x=A(1:1,5:5)
//disp(x) // testowanie

// zad_15 [nadaj elementowi z 2 wiersza i 5 kolumny wartość 0]
//v_test=A(2,5), disp(v_test) // testowanie
A(2,5)=0
//disp(A) // testowanie
//v_test=A(2,5), disp(v_test) // testowanie

// zad_16  [nadaj elementowi z 2 kolumny i 5 wiersza wartość 100]
//v_test=A(2,5), disp(v_test) // testowanie
A(2,5)=100
//disp(A) // testowanie
//v_test=A(2,5), disp(v_test) // testowanie

// zad_17 [wyświetl 3 wiersz macierzy D]
disp(D(3,:))

// zad_18 [wyświetl drugą i trzecią kolumnę macierz D i przypisz wynik zmiennej F]
disp(D(:,2))
disp(D(:,3))

F=D(:,2)+D(:,3)
//disp(F) // testowanie

// zad_19 [sprawdź rozmiar zmiennej F]
disp(size(F)) // kolumny wiersze

// zad_20 [wyświetl fragment macierzy A znajdujący się między kolumnami 3 i 6]
disp(A(:,3:6)) // fragment z uwzględnieniem kolumn 3,4,5,6
disp(A(:,4:5)) // fragment z uwzględnieniem kolumn 4,5

// zad_21 [usuń 4tą kulumnę macierzy A (A(4,:)=[])]
//disp(A) // testowanie [macierz A przed usunięciem 4tej kolumny]
A(:,4)=[]
//disp(A) // testowanie [macierz A po usunięciem 4tej kolumny]

// zad_22 [przypisz zmiennej wiersze liczbę wierszy,
// a zmiennej kolumny liczbę kolumn macierzy A]
// 22.1 [sposób nr 1]
wiersze=size(A,1)
kolumny=size(A,2)
//disp(wiersze) // testowanie
//disp(kolumny) // testowanie
// 22.2 [sposób nr 2]
[wiersze, kolumny]=size(A)
//disp(wiersze, kolumny) // testowanie

// zad_23 [utwórz macierz E o rozmiarze macierzy A składającą się z samych zer]
E=zeros(wiersze, kolumny)
disp(E)

// zad_24 [utwórz macierz G o rozmiarze macierzy A składającą się z samych jedynek]
G=ones(wiersze, kolumny)
disp(G)

// zad_25 [zdefiniuj macierze A oraz B oraz oblicz
// iloczyny macierzy AB i BA macierzowo i tablicowo]
A=[1 0; 3 2], B=[1 2; 3 4]
disp(A,B) // macierze A i B
disp(A*B) // iloczyn macierzy AB
disp(B*A) // iloczyn macierzy BA
disp(sum(A*B))
disp(sum(B*A))

// zad_26 [oblicz A^3 macierzowo i tablicowo]
disp(A^3) // obliczenie macierzy [ A^3 ]
//disp(A*A*A) // testowanie

// zad_27 [wyznacz macierz transponowaną B^T]
disp(B') // macierz B transponowana [ B^T ]

// zad_28 [wyznacz macierz C=(A+B^T)/2]
C=(A+B')/2
disp(C)

// zad_29 [zdefiniuj wektor wierszowy x i macierz 𝐴; wykonaj mnożenie A x]
x=[1 4]
//disp(x) // testowanie
A=[4 1; 7 2]
//disp(A) // testowanie
disp(x*A) // mnożenie A x

// zad_30 [przyjmując wektor x oblicz wartość funkcji y]
//x=[0,%pi/2,%pi,(3*%pi)/2,2*%pi] // sposób zapisu nr 1
x=[0 %pi/2 %pi (3*%pi)/2 2*%pi] // sposób zapisu nr 2
y=sum((2*x).*(sin(1+x^2)))
disp(y)

// zad_31 [powiel macierz A dwa razy w pionie i trzy razy w poziomie - repmat]
disp(A) // macierz A przed powieleniem
A=repmat(A,2,3) // powielenie macierzy
disp(A) // macierz A po powieleniu

// zad_32 [zmień rozmiar macierzy B na 2 wiersze i 12 kolumn - reshape/matrix]
B=[1 2 3 4 5 6; 2 3 4 5 6 7; 3 4 5 6 7 8; 4 5 6 7 8 9] // zdefiniowanie macierzy B
disp(B) // macierz B przed zmienieniem rozmiaru
B=matrix(B,2,12) // zmienienie rozmiaru macierzy
disp(B) // macierz B po zmienieniu rozmiaru

// zad_33 [oblicz wartość funkcji sin(x) przyjmując, że zmienna x
// zmienia się od wartości -pi do +pi z krokiem 0.1)]
x = -%pi:0.1:%pi  // wektor x z wartościami od -pi do +pi z krokiem 0.1
y = sin(x)  // obliczenie wartości sin dla każdej wartości x
//disp(y) // testowanie [wyświetlanie wyników z y]
disp([x' y']) // wyświetlenie wartości x i y w formie tabelki

// zad_34 [zdefiniuj zmienne k=2 i m=5; zapisz zmienne k i m
// w pliku wynik.mat (polecenie save); zmień wartość zmiennej m =10;
// odczytaj dane zapisane w pliku wynik.mat (load);
// sprawdź, jakie wartości mają zmienne]
k = 2, m = 5 // zdefiniowanie zmiennych k i m
save("wynik.mat", "k", "m") // zapis zmiennych do pliku wyniki.mat
m = 10 // zmiana wartości zmiennej m
//disp(k, m) // testowanie zmiennych
load("wynik.mat") // wczytanie zmiennych z pliku wyniki.mat
disp(k, m) // sprawdzenie wartości zmiennych

/*
// zad_35 [dd]

// www.scilab.org
*/
