// Dwoma ukośnikami poprzedza się komentarz
// Komentarz jest pomijany przez program, ale jest przydatny,
// bo można sobie w nim napisać, co dany fragment programu wykonuje.
// Komentarz najczęściej pisze się powyżej komentowanego fragmentu kodu.

// Procedura main() jest początkiem każdego programu
// Nie posiada parametrów, dlatego ma puste nawiasy okrągłe
// Posiada typ void co oznacza, że nie zwraca żadnych danych
// Po otwierającym nawiasie klamrowym { zaczyna się ciało programu, które kończy się
// klamrowym nawiasem zamykającym }
void main() {
  // Polecenie print(...) drukuje wynik w konsoli
  // Polecenie print(...) przyjmuje parametry, dlatego w nawiasach okrągłych coś musi być.
  // Polecenie kończy się średnikiem ;
  // Napisy umieszcza się w pojedynczych cudzysłowach.
  // Czasem w podwójnych, ale łatwiej w pojedynczych, bo nie trzeba używać shifta.
  // Podwójnych używa się na przykład, gdy chce się wyświetlić pojedynczy wewnątrz napisu
  // jako apostrof, na przykład "I'd like to use an apostophe"
  print(
      'Dzień dobry, jest niedziela.'); // A tak wygląda komentarz napisany na końcu linii. Nie poprawia to czytelności, ale jest dozwolone.

  // Słowo kluczowe int oznacza zadeklarowanie użycia
  // zmiennej, w której będziemy przechowywać liczby całkowite
  // Zmienna będzie nazywała się mojaLiczba
  // Polecenie kończy się średnikiem ;
  int mojaLiczba;

  // Do zmiennej przypisujemy jakąś wartość, tutaj 99.
  // Polecenie kończy się średnikiem ;
  mojaLiczba = 99;

  // Ale możemy też zmienną zmienić (dlatego nazywa się zmienną)
  // i przypisać jej inną wartość, na przykład 1234, albo wynik działania jakiejś funkcji.
  // Tutaj przypisywany jest jej wynik działania
  // funkcji dodajDoSiebieDwieLiczby(-50, 43), a poprzednia
  // wartość 99 nie jest już pamiętana.
  mojaLiczba = dodajDoSiebieDwieLiczby(-50, 43);

  // Tutaj wykonywana jest procedura wydrukujWynik(...).
  // Uruchamia się ją podobnie do print(...)
  // Nasza procedura przyjmuje jeden parametr, dlatego
  // okrągły nawias nie jest pusty
  wydrukujWynik(mojaLiczba);

  // Tutaj nadpisujemy zmienną mojaLiczba inną wartością,
  // tym razem wyliczoną za pomocą funkcji odejmijOdSiebieTrzyLiczby(...)
  // Funkcja odejmijOdSiebieTrzyLiczby przyjmuje trzy parametry.
  mojaLiczba = odejmijOdSiebieTrzyLiczby(6, 2, 1);
  wydrukujWynik(mojaLiczba);

  // Tutaj zaczynamy używać nowego typu danych.
  // int był dla liczb całkowitych, a
  // double jest dla liczb ułamowych, bo będziemy dzielić liczby, a
  // wynik dzielenia jest często ułamkiem
  double mojaLiczbaNiecalkowita = podzielDwieLiczby(20, 30);
  wydrukujWynik(mojaLiczbaNiecalkowita);

  // Tu jest ciekawostka: do procedury wydrukujWynik została wstawiona funkcja pomnozDwieLiczby(7, 15)
  // Jest to częsta praktyka, bo nie zaleca się tworzenie zmiennych tylko po to, żeby wstawić ich wynik
  // w inne miejsce.
  wydrukujWynik(pomnozDwieLiczby(7, 15));

  // pętla for (...; ...; ...;){...} składa się z czterech elementów. Trzy elementy sterujące pętlą
  // i czwarty, który opisuje co ma się w pętli wykonać - ciało pętli.
  // 1) w pierwszym deklaruje się użycie licznika, który będzie sterował działaniem
  //    pętli. W naszym przykładzie użyliśmy nowej zmiennej o nazwie licznik typu int,
  //    któremu na początek przypisaliśmy wartość 0. Często są to po prostu litery i albo j ale u nas jest to licznik.
  // 2) drugim elementem jest wartość logiczna. Jeśli wartość logiczna jest spełniona, to
  //    pętla będzie się wykonywała. Jeśli nie spełniona, to pętla
  //    przestanie się wykonywać
  // 3) w trzecim elemencie wpisuje się, co ma się wydarzyć, gdy pętla się wykona.
  //    licznik++ oznacza, że licznik ma się zwiększyć o 1
  // 4) czwartym elementem pętli jest ciało pętli - w nawiasach klamrowych {}
  // ciało pętli będzie się wykonywało tyle razy ile razy spełniony jest środkowy warunek sterujący pętlą
  for (int licznik = 0; licznik < 100; licznik++) {
    // wstawiamy w zmienną mojaLiczba wynik mnożenia liczby 2 i licznika
    mojaLiczba = pomnozDwieLiczby(2, licznik);
    // i drukujemy wynik mnożenia, czyli wartość zmiennej mojaLiczba
    // spodziewanym efektem jest wyświetlenie 100 kolejnych liczb parzystych
    // (zaczynając od zera, bo na początku nasz licznik wynosi 0).
    wydrukujWynik(mojaLiczba);
  }
}

// Ten kod, to procedura. Procedura różni się od funkcji tym, że nie zwraca wartości,
// a nie zwraca wartości, bo ma typ void.
// wydrukujWynik przyjmuje parametr typu num.
// num to typ danych, który jest szerszy, niż int i double, dlatego do tej procedury można przekazać
// parametr będący liczbą całkowitą int, np. 3, jak i ułamek dziesiętny double, np. 0.000000001
// Parametr przekazany do tej procedury, wewnątrz tej procedury będzie miał nazwę "wynik",
// czyli inną, niż na zewnątrz, gdzie zmienna nazywała się "mojaLiczba" albo "mojaLiczbaNiecalkowita"
void wydrukujWynik(num wynik) {
  // polecenie print(1) drukuje w konsoli liczbę 1, ale żeby wydrukować napis, to trzeba użyć cudzysłowów
  // a żeby użyć i napisu i liczb, to trzeba użyć znaku $ przed nazwą zmiennej wewnątrz napisu
  // Warto zauważyć, że słowo wynik występuje dwa razy, ale liczba będzie wstawiona tylko tam, gdzie
  // jest $wynik ze znakiem dolara
  print('Obecny wynik to: $wynik');
}

// Te funkcje w zasadzie są bardzo dobrze opisane, bo ich nazwa mówi, co one robią i komentarz byłby zbędny
// Warto zauważyć, że funkcje (w odróżnieniu od procedur) zwaracją wynik. Czyli:
// 1) z przodu mają zadeklarowany typ inny niż void, tutaj int
// 2) posiadają w swoim ciele polecenie return, po którym funkcja kończy działanie
int dodajDoSiebieDwieLiczby(int a, int b) {
  return a + b;
  // jeśli tu byłoby coś jeszcze, na przykład print('chcę jeszcze coś powiedzieć');
  // to utrzymalibyśmy błąd "martwy kod" oznaczający, że program w to miejsce nigdy nie
  // wejście, bo skończył działanie poleceniem return linię wcześniej
}

int odejmijOdSiebieTrzyLiczby(int a, int b, int c) {
  return a - b - c;
}

double podzielDwieLiczby(int a, int b) {
  return a / b;
}

int pomnozDwieLiczby(int a, int b) {
  return a * b;
}
