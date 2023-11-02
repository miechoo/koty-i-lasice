// nasz program tworzy trzy obiekty klasy Kot
// każdy z kotów przedstawia się
void main() {
  // kot pierwszy nazywa się Mruczek
  Kot kot1 = Kot('Mruczek');
  // kot pierwszy przedstawia się
  kot1.przedstawSie();

  // kot drugi nazywa się Dachowiec
  Kot kot2 = Kot('Dachowiec');
  // kot drugi przedstawia się
  kot2.przedstawSie();

  // kot trzeci nazywa się Futrzak
  Kot kot3 = Kot('Futrzak');
  // kot trzeci przedstawia się
  kot3.przedstawSie();
}

// Klasa Kot ogólnie opisuje z czego kot się składa i co robi.
// Nasze koty będą składały się z imienia i będą potrafiły się przedstawić.
//
// Każda klasa składa się z atrybutów i metod.
// Atrybuty klasy służą do przechowywania jakichś wartości, a
// metody klasy pozwalają wykonywać jakieś operacje.
// Metody to są takie funkcje i procedury, które są napisane wewnątrz klasy.
// Funkcje zwracają wartość.
// Procedury nie zwracają wartości.
// Atrybuty są to zmienne lub stałe, które są napisane wewnątrz klasy.
class Kot {
  // Kot składa się z imienia
  String imie = '';

  // Imię kotu nadawane jest tutaj. To specjana metoda, tak zwany konstruktor, która zawsze jest wykonywana jako pierwsza.
  // Metoda ta wygląda jakby miała taką samą nazwę, jak nazwa klasy, ale
  // tak naprawdę, to ona nie ma nazwy, a słowo Kot w napisie Kot(String inicjalneImie)
  // oznacza zwracany typ. Nasz konstruktor zwraca nowego Kota.
  // Funkcje, które nie mają nazwy ogólnie nazywają się funkcjami lambda.
  // TypZwracany tuJestMiejsceNaNazweFunkcji (TutajPodajeSieTypParametruFunkcji nazwaParametruFunkcji, InnyTypParametruFunkcji inny, JakisTypParametru parametr) {ciało funkcji;}
  // Konstruktor przyjmuje w naszym przypadku jeden parametr - inicjalne imię kota.
  // Na przykład ```Kot kot3 = Kot('Futrzak');```
  Kot(String inicjalneImie) {
    imie = inicjalneImie;
  }

  // Procedura ta jest publiczną metodą klasy Kot.
  // Wyświetla napis i wykonuje kolejną procedurę _przedstawSieImieniem()
  void przedstawSie() {
    print('Mrrrrrr.... jestem kocurem');
    _przedstawSieImieniem();
  }

  // Procedura ta jest prywatną procedurą klasy Kot. Wyświetla napis.
  // Prywatna procedura może być użyta tylko z wewnątrz samej klasy.
  // Na przykład z innej metody (procedury lub funkcji).
  // Nie można na przykład wykonać kot3._przedstawSieOgolnie(), bo
  // jest to próba użycia prywatnej metody z zewnątrz klasy, ale
  // da się z metody ```przedstawSie(){ ``` wykonać ```_przedstawSieImieniem(); }``` , bo
  // jest to użycie prywatnej metody wewnątrz klasy Kot.
  // W języku Dart, żeby metoda była prywatna, musi zaczynać się od znaku podkreślenia _
  void _przedstawSieImieniem() {
    print('Mrrrrrr.... jestem $imie');
  }
}
